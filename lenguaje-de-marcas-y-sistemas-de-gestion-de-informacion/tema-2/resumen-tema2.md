# RESUMEN COMPLETO TEMA 2: DEFINICIONES DE TIPO DE DOCUMENTO (DTD)

## 1. DOCUMENTO XML - ESTRUCTURA Y SINTAXIS

### 1.1 Componentes de un documento XML

Un documento XML completo consta de:

#### **PRÓLOGO**
Informa al intérprete de los datos necesarios para procesar el documento.

**Partes del prólogo:**

1. **Definición de XML:**
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
```
- `version`: versión de XML utilizada
- `encoding`: código de caracteres (UTF-8, ISO-8859-1, etc.)
- `standalone`: 
  - `yes` = documento autónomo (DTD interno o sin DTD)
  - `no` = documento NO autónomo (necesita DTD externo)

2. **Declaración del tipo de documento:**
```xml
<!DOCTYPE nombre_ejemplar ...>
```
- `nombre_ejemplar`: nombre del elemento raíz
- Debe coincidir exactamente con el nombre del ejemplar

#### **EJEMPLAR**
- Elemento raíz del documento
- Debe ser único
- Contiene todos los datos del documento
- Estructura de árbol jerárquica

### 1.2 Declaración de tipo de documento

Tiene DOS partes:

1. **Declaración del tipo propiamente dicha:**
   - Comienza con `<!DOCTYPE`
   - Seguido del nombre del tipo (= nombre del ejemplar)
   - Separado por al menos un espacio

2. **Definición del tipo de documento:**
   - Define las cualidades del tipo
   - Puede ser interna, externa o mixta

---

## 2. SUBCONJUNTOS DTD: INTERNO Y EXTERNO

### 2.1 Subconjunto INTERNO

**Características:**
- Declaraciones exclusivas de UN documento
- NO se pueden compartir
- Se procesan PRIMERO
- Van entre corchetes `[ ]`
- `standalone="yes"` (documento autónomo)

**Sintaxis:**
```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!DOCTYPE alumno [
  <!ELEMENT alumno (#PCDATA)>
  <!ELEMENT nombre (#PCDATA)>
]>
<alumno>Juan García</alumno>
```

### 2.2 Subconjunto EXTERNO

**Características:**
- Declaraciones en archivo separado (.dtd)
- Se pueden compartir entre múltiples documentos XML
- Se procesan DESPUÉS del interno
- `standalone="no"` (documento NO autónomo)
- Procesamiento más lento (hay que obtener el fichero)

**Dos formas de declaración:**

#### **SYSTEM** (uso más común)
```xml
<!DOCTYPE nombre_ejemplar SYSTEM "URI">
```
**Ejemplo:**
```xml
<!DOCTYPE alumno SYSTEM "alumno.dtd">
<!DOCTYPE alumno SYSTEM "http://ejemplo.com/alumno.dtd">
```

#### **PUBLIC** (con identificador público)
```xml
<!DOCTYPE nombre_ejemplar PUBLIC "identificador_publico" "URI">
```
- El identificador público puede usarse para generar URI alternativa
- Siempre debe incluir también un URI
- El procesador puede usar el identificador para buscar en tablas locales

**Ejemplo:**
```xml
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
```

### 2.3 DTD MIXTO (interno + externo)

**Orden de procesamiento:**
1. Primero se procesa el subconjunto INTERNO
2. Después se procesa el subconjunto EXTERNO
3. El interno puede SOBRESCRIBIR declaraciones del externo

**Ejemplo:**
```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE alumno SYSTEM "alumno.dtd" [
  <!ELEMENT nombre (#PCDATA)>
]>
```

---

## 3. DECLARACIÓN DE ELEMENTOS TERMINALES

### 3.1 Sintaxis general

```xml
<!ELEMENT nombre_elemento tipo_contenido>
```

### 3.2 Tipos de elementos terminales

#### **EMPTY** - Elemento vacío
- No contiene nada (ni texto ni elementos)
```xml
<!ELEMENT br EMPTY>
```
**Uso en XML:**
```xml
<br/>
```

#### **ANY** - Cualquier contenido
- Permite cualquier contenido (texto, elementos, mixto)
```xml
<!ELEMENT nota ANY>
```
**Uso en XML:**
```xml
<nota>Texto y <elemento>más cosas</elemento></nota>
```

#### **#PCDATA** - Datos de tipo carácter
- Parsed Character Data (datos analizados)
- Solo texto
- NO puede contener elementos
- Se analizan en busca de etiquetas
- Caracteres no permitidos directamente: `<`, `&`, `]]>`, `>`

```xml
<!ELEMENT nombre (#PCDATA)>
```
**Uso en XML:**
```xml
<nombre>María García</nombre>
```

**Caracteres especiales en #PCDATA:**
- `<` → usar `&lt;`
- `&` → usar `&amp;`
- `>` → usar `&gt;`

---

## 4. DECLARACIÓN DE ELEMENTOS NO TERMINALES

### 4.1 Elementos que contienen otros elementos

```xml
<!ELEMENT nombre_elemento (lista_de_elementos)>
```

**Ejemplo:**
```xml
<!ELEMENT alumno (nombre, apellidos, direccion)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apellidos (#PCDATA)>
<!ELEMENT direccion (#PCDATA)>
```

### 4.2 Indicadores de ORDEN

#### **Secuencia (coma ,)**
- Los elementos deben aparecer en el orden especificado
```xml
<!ELEMENT alumno (nombre, apellidos, edad)>
```
**XML válido:**
```xml
<alumno>
  <nombre>Juan</nombre>
  <apellidos>García</apellidos>
  <edad>20</edad>
</alumno>
```

#### **Alternativa (barra vertical |)**
- Elegir UNO de los elementos (o-exclusiva)
```xml
<!ELEMENT contacto (email | telefono)>
```
**XML válido:**
```xml
<contacto>
  <email>juan@ejemplo.com</email>
</contacto>
```
O bien:
```xml
<contacto>
  <telefono>666777888</telefono>
</contacto>
```

#### **Grupos con paréntesis ()**
```xml
<!ELEMENT provincia (nombre, (cp, ciudad)+)>
```

### 4.3 Indicadores de CARDINALIDAD (ocurrencias)

| Operador | Significado | Nombre |
|----------|-------------|--------|
| **(ninguno)** | Exactamente 1 vez | Obligatorio |
| **?** | 0 o 1 vez | Opcional |
| **+** | 1 o más veces | Uno o más |
| **\*** | 0 o más veces | Cero o más |

#### **Operador ? (opcional)**
```xml
<!ELEMENT telefono (casa?, movil)>
```
- `casa` puede aparecer 0 o 1 vez
- `movil` debe aparecer exactamente 1 vez

#### **Operador + (uno o más)**
```xml
<!ELEMENT clase (alumno+)>
```
- Debe haber AL MENOS 1 alumno
- Puede haber más de 1

#### **Operador * (cero o más)**
```xml
<!ELEMENT clase (alumno*)>
```
- Puede no haber alumnos
- Puede haber 1 o más alumnos

#### **Combinaciones**
```xml
<!ELEMENT provincia (nombre, (cp, ciudad)+)>
```
- `nombre`: exactamente 1 vez
- El grupo `(cp, ciudad)`: 1 o más veces

```xml
<!ELEMENT alumno (nombre, apellidos, telefono*)>
```
- `nombre`: 1 vez
- `apellidos`: 1 vez
- `telefono`: 0 o más veces

---

## 5. DECLARACIÓN DE ATRIBUTOS

### 5.1 Sintaxis

```xml
<!ATTLIST nombre_elemento
  nombre_atributo tipo modificador
  nombre_atributo2 tipo2 modificador2
>
```

**O una declaración por atributo:**
```xml
<!ATTLIST alumno edad CDATA #REQUIRED>
<!ATTLIST alumno nombre CDATA #IMPLIED>
```

### 5.2 Tipos de atributos

#### **CDATA** - Cadena de texto
```xml
<!ATTLIST alumno nombre CDATA #REQUIRED>
```

#### **ID** - Identificador único
- Valor ÚNICO en todo el documento
- Los números NO son válidos como ID
- Usar prefijos: `id-001`, `A001`, etc.
```xml
<!ATTLIST alumno id ID #REQUIRED>
```
**Uso en XML:**
```xml
<alumno id="A001">...</alumno>
<alumno id="A002">...</alumno>
```

#### **IDREF** - Referencia a un ID
- El valor debe corresponder a un ID existente
- Integridad referencial básica
```xml
<!ATTLIST nota alumno_ref IDREF #REQUIRED>
```
**Uso en XML:**
```xml
<alumno id="A001">Juan</alumno>
<nota alumno_ref="A001">Aprobado</nota>
```

#### **IDREFS** - Lista de referencias
- Varios IDREF separados por espacios
```xml
<!ATTLIST proyecto participantes IDREFS #REQUIRED>
```

#### **NMTOKEN** - Nombre válido XML
- Palabra que cumple reglas de nombres XML
```xml
<!ATTLIST elemento codigo NMTOKEN #REQUIRED>
```

#### **NMTOKENS** - Lista de NMTOKEN
```xml
<!ATTLIST elemento codigos NMTOKENS #REQUIRED>
```

#### **Enumeración** - Lista cerrada de valores
```xml
<!ATTLIST dia nombre (Lunes|Martes|Miercoles|Jueves|Viernes|Sabado|Domingo) #REQUIRED>
```
**Uso en XML:**
```xml
<dia nombre="Lunes"/>
```

#### **ENTITY** - Entidad externa
```xml
<!ATTLIST imagen archivo ENTITY #REQUIRED>
```

#### **ENTITIES** - Lista de entidades
```xml
<!ATTLIST galeria archivos ENTITIES #REQUIRED>
```

#### **NOTATION** - Notación
```xml
<!ATTLIST imagen formato NOTATION (GIF|JPEG|PNG) #REQUIRED>
```

### 5.3 Modificadores de atributos

| Modificador | Significado |
|-------------|-------------|
| **#REQUIRED** | Obligatorio - debe aparecer siempre |
| **#IMPLIED** | Opcional - puede no aparecer |
| **#FIXED "valor"** | Valor fijo - no se puede cambiar |
| **"valor"** | Valor por defecto - se usa si no se especifica |

#### **#REQUIRED** - Obligatorio
```xml
<!ATTLIST alumno id ID #REQUIRED>
```
**XML válido:**
```xml
<alumno id="A001">...</alumno>
```
**XML NO válido:**
```xml
<alumno>...</alumno>  <!-- Falta el atributo id -->
```

#### **#IMPLIED** - Opcional
```xml
<!ATTLIST alumno telefono CDATA #IMPLIED>
```
**XML válido:**
```xml
<alumno telefono="666777888">...</alumno>
<alumno>...</alumno>  <!-- También válido sin teléfono -->
```

#### **#FIXED** - Valor fijo
```xml
<!ATTLIST documento version CDATA #FIXED "1.0">
```
**XML válido:**
```xml
<documento version="1.0">...</documento>
<documento>...</documento>  <!-- Toma valor 1.0 automáticamente -->
```
**XML NO válido:**
```xml
<documento version="2.0">...</documento>  <!-- No se puede cambiar -->
```

#### **Valor por defecto (literal)**
```xml
<!ATTLIST alumno curso CDATA "1">
```
**XML:**
```xml
<alumno curso="2">...</alumno>  <!-- Usa 2 -->
<alumno>...</alumno>  <!-- Usa 1 por defecto -->
```

### 5.4 Orden de atributos

**IMPORTANTE:** En los atributos el ORDEN NO importa

```xml
<alumno id="A001" nombre="Juan"/>
```
Es IGUAL a:
```xml
<alumno nombre="Juan" id="A001"/>
```

**PERO:** No puede haber dos atributos con el mismo nombre
```xml
<alumno nombre="Juan" nombre="Pedro"/>  <!-- ERROR -->
```

---

## 6. ENTIDADES

### 6.1 Concepto

- Permiten definir **constantes** en un documento
- Se limitan por `&` y `;`
- El intérprete sustituye la entidad por su valor
- **NO admiten recursividad** (una entidad no puede referirse a sí misma)

### 6.2 Sintaxis

```xml
<!ENTITY nombre_entidad "valor">
```

**Uso en XML:**
```xml
&nombre_entidad;
```

### 6.3 Entidades INTERNAS predefinidas

| Entidad | Carácter | Uso |
|---------|----------|-----|
| `&lt;` | < | Menor que |
| `&gt;` | > | Mayor que |
| `&amp;` | & | Ampersand |
| `&quot;` | " | Comillas dobles |
| `&apos;` | ' | Apóstrofe/comilla simple |

**Ejemplo:**
```xml
<formula>a &lt; b &amp;&amp; c &gt; d</formula>
```
Se muestra como: `a < b && c > d`

### 6.4 Entidades INTERNAS personalizadas

```xml
<!ENTITY instituto "IES Miguel de Cervantes">
<!ENTITY ciudad "Madrid">
```

**Uso en XML:**
```xml
<centro>&instituto; de &ciudad;</centro>
```
Resultado: `IES Miguel de Cervantes de Madrid`

### 6.5 Entidades EXTERNAS

Permiten incluir contenido de archivos externos

```xml
<!ENTITY nombre_entidad SYSTEM "URI">
```

**Ejemplo:**
```xml
<!ENTITY capitulo1 SYSTEM "http://ejemplo.com/cap1.xml">
```

**Uso en XML:**
```xml
<libro>
  &capitulo1;
</libro>
```

**IMPORTANTE:** El contenido del archivo externo:
- Se ANALIZA (debe ser XML válido)
- Sigue la sintaxis XML

### 6.6 Entidades externas NO ANALIZADAS (NDATA)

Para archivos binarios (imágenes, etc.)

```xml
<!ENTITY nombre_entidad SYSTEM "URI" NDATA notacion>
```

**Ejemplo:**
```xml
<!NOTATION gif SYSTEM "visor.exe">
<!ENTITY logo SYSTEM "logo.gif" NDATA gif>
```

### 6.7 Entidades de PARÁMETRO

- Solo se usan DENTRO del DTD
- Se denotan con `%nombre;`
- Permiten reutilizar partes del DTD

**Sintaxis:**
```xml
<!ENTITY % nombre "valor">
```

**Ejemplo:**
```xml
<!ENTITY % direccion "calle, numero, ciudad, cp">
<!ELEMENT alumno (nombre, %direccion;)>
<!ELEMENT empresa (razon_social, %direccion;)>
```

Equivale a:
```xml
<!ELEMENT alumno (nombre, calle, numero, ciudad, cp)>
<!ELEMENT empresa (razon_social, calle, numero, ciudad, cp)>
```

### 6.8 Entidades de parámetro EXTERNAS

Permiten dividir el DTD en varios archivos

```xml
<!ENTITY % nombre SYSTEM "archivo.dtd">
%nombre;
```

**Ejemplo:**

**Archivo datos.dtd:**
```xml
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apellidos (#PCDATA)>
```

**Archivo principal:**
```xml
<!ENTITY % datos SYSTEM "datos.dtd">
%datos;
<!ELEMENT alumno (nombre, apellidos)>
```

---

## 7. NOTACIONES

### 7.1 Concepto

Asocian archivos binarios con aplicaciones que los procesan

### 7.2 Sintaxis

```xml
<!NOTATION nombre SYSTEM "aplicacion">
```

### 7.3 Uso completo

```xml
<!NOTATION gif SYSTEM "gifEditor.exe">
<!NOTATION jpeg SYSTEM "jpegViewer.exe">

<!ENTITY logo SYSTEM "logo.gif" NDATA gif>
<!ENTITY foto SYSTEM "foto.jpg" NDATA jpeg>
```

---

## 8. SECCIONES CONDICIONALES

### 8.1 Concepto

Permiten **incluir o ignorar** partes del DTD

### 8.2 INCLUDE - Incluir

```xml
<![INCLUDE [
  declaraciones visibles
]]>
```

**Ejemplo:**
```xml
<![INCLUDE [
  <!ELEMENT nombre (#PCDATA)>
  <!ELEMENT edad (#PCDATA)>
]]>
```

### 8.3 IGNORE - Ignorar

```xml
<![IGNORE [
  declaraciones ocultas
]]>
```

**Ejemplo:**
```xml
<![IGNORE [
  <!ELEMENT clave (#PCDATA)>
  <!ELEMENT password (#PCDATA)>
]]>
```

### 8.4 Uso práctico

- Comentar bloques de código DTD
- Activar/desactivar partes según versión
- Debugging

---

## 9. ESPACIOS DE NOMBRES (NAMESPACES)

### 9.1 Problema

Elementos con el mismo nombre pero diferente significado

**Conflicto:**
```xml
<email>pedro@ejemplo.com</email>  <!-- correo electrónico -->

<email>  <!-- mensaje de correo -->
  <de>Juan</de>
  <para>Pedro</para>
</email>
```

### 9.2 Solución: Prefijos

```xml
<correo:email>pedro@ejemplo.com</correo:email>
<mensaje:email>
  <mensaje:de>Juan</mensaje:de>
</mensaje:email>
```

### 9.3 Declaración de espacios de nombres

**Sintaxis:**
```xml
xmlns:prefijo="URI"
```

**Sin prefijo (espacio por defecto):**
```xml
xmlns="URI"
```

### 9.4 Ejemplos

**Con prefijo:**
```xml
<raiz xmlns:e="http://ejemplo.com/email">
  <e:email>
    <e:de>Juan</e:de>
    <e:para>Pedro</e:para>
  </e:email>
</raiz>
```

**Varios espacios de nombres:**
```xml
<raiz xmlns:e="http://ejemplo.com/email"
      xmlns:a="http://ejemplo.com/agenda">
  <e:email>
    <e:de>Juan</e:de>
  </e:email>
  <a:contacto>
    <a:nombre>Pedro</a:nombre>
    <a:email>pedro@ejemplo.com</a:email>
  </a:contacto>
</raiz>
```

### 9.5 URI del espacio de nombres

- **NO** es una URL real
- Es solo un identificador único
- El parser NO busca información en esa URI
- Algunas empresas usan la URI para documentación

---

## 10. ELEMENTOS VS ATRIBUTOS - CRITERIOS DE USO

### 10.1 Usar ELEMENTO cuando

- ✅ Contiene subestructuras
- ✅ Es de tamaño considerable
- ✅ Su valor cambia frecuentemente
- ✅ Va a ser mostrado al usuario

**Ejemplo:**
```xml
<alumno>
  <direccion>
    <calle>Mayor</calle>
    <numero>10</numero>
    <ciudad>Madrid</ciudad>
  </direccion>
</alumno>
```

### 10.2 Usar ATRIBUTO cuando

- ✅ Es de pequeño tamaño
- ✅ Su valor raramente cambia
- ✅ Solo puede tener unos pocos valores fijos
- ✅ Guía el procesamiento XML pero no se muestra
- ✅ Es metadata (datos sobre datos)

**Ejemplo:**
```xml
<alumno id="A001" tipo="regular" activo="true">
  <nombre>Juan García</nombre>
</alumno>
```

### 10.3 Orden en elementos vs atributos

| | Elementos | Atributos |
|---|---|---|
| **Orden** | SÍ importa | NO importa |
| **Repetición** | Puede repetirse | NO puede repetirse |
| **Estructura** | Puede tener hijos | NO puede tener hijos |

---

## 11. VENTAJAS Y LIMITACIONES DE DTD

### 11.1 VENTAJAS de DTD

✅ **Sintaxis sencilla** - Fácil de aprender
✅ **Entidades** - Permiten constantes y macros
✅ **Integridad referencial** - ID e IDREF
✅ **Inclusión de archivos** - Modularización
✅ **Ampliamente soportado** - Estándar antiguo

### 11.2 LIMITACIONES de DTD

❌ **No usa sintaxis XML** - Lenguaje propio
❌ **No soporta espacios de nombres** adecuadamente
❌ **No define tipos de datos** - Todo es texto
❌ **No permite secuencias no ordenadas** bien
❌ **No permite claves compuestas** (solo ID simple)
❌ **Una vez definido, no es extensible** - No se pueden añadir vocabularios

---

## 12. VALIDACIÓN DE DOCUMENTOS

### 12.1 Documento bien formado (well-formed)

- Cumple las reglas sintácticas de XML
- Etiquetas correctamente anidadas
- Un único elemento raíz
- Atributos entre comillas
- Entidades bien formadas

### 12.2 Documento válido (valid)

- Documento bien formado
- **Y ADEMÁS** cumple las restricciones del DTD
- Todos los elementos declarados
- Todos los atributos declarados
- Cardinalidades respetadas
- Tipos de atributos correctos

---

## 13. ERRORES COMUNES EN DTD

### 13.1 En declaración de elementos

❌ **Olvidar paréntesis en elementos hijos:**
```xml
<!ELEMENT alumno nombre, apellidos>  <!-- MAL -->
<!ELEMENT alumno (nombre, apellidos)>  <!-- BIEN -->
```

❌ **Mezclar #PCDATA con elementos sin alternativa:**
```xml
<!ELEMENT nota (#PCDATA, comentario)>  <!-- MAL -->
<!ELEMENT nota (#PCDATA | comentario)*>  <!-- BIEN -->
```

### 13.2 En declaración de atributos

❌ **Usar ID sin #REQUIRED o #IMPLIED:**
```xml
<!ATTLIST alumno id ID>  <!-- MAL -->
<!ATTLIST alumno id ID #REQUIRED>  <!-- BIEN -->
```

❌ **Valores por defecto en ID:**
```xml
<!ATTLIST alumno id ID "A001">  <!-- MAL -->
<!ATTLIST alumno id ID #REQUIRED>  <!-- BIEN -->
```

### 13.3 En entidades

❌ **Recursividad:**
```xml
<!ENTITY test "&test;">  <!-- ERROR: recursivo -->
```

❌ **Uso fuera del documento:**
```xml
<!ENTITY instituto "IES Ejemplo">
<!-- Usar &instituto; en el DTD NO funciona -->
```

---

## 14. SINTAXIS RESUMEN

### Elementos
```xml
<!ELEMENT nombre EMPTY>
<!ELEMENT nombre ANY>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT nombre (hijo1, hijo2)>
<!ELEMENT nombre (hijo1 | hijo2)>
<!ELEMENT nombre (hijo?)>
<!ELEMENT nombre (hijo+)>
<!ELEMENT nombre (hijo*)>
```

### Atributos
```xml
<!ATTLIST elemento
  atr1 CDATA #REQUIRED
  atr2 ID #REQUIRED
  atr3 IDREF #IMPLIED
  atr4 (valor1|valor2|valor3) #REQUIRED
  atr5 CDATA #FIXED "valor"
  atr6 CDATA "valordefecto"
>
```

### Entidades
```xml
<!ENTITY nombre "valor">
<!ENTITY nombre SYSTEM "archivo.xml">
<!ENTITY % nombre "valor">
<!ENTITY % nombre SYSTEM "archivo.dtd">
%nombre;
```

### Notaciones
```xml
<!NOTATION nombre SYSTEM "aplicacion">
<!ENTITY archivo SYSTEM "imagen.gif" NDATA nombre>
```

---

## 15. EJEMPLOS COMPLETOS

### Ejemplo 1: DTD Interno Simple

```xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!DOCTYPE biblioteca [
  <!ELEMENT biblioteca (libro+)>
  <!ELEMENT libro (titulo, autor, año)>
  <!ELEMENT titulo (#PCDATA)>
  <!ELEMENT autor (#PCDATA)>
  <!ELEMENT año (#PCDATA)>
  <!ATTLIST libro isbn ID #REQUIRED>
]>
<biblioteca>
  <libro isbn="L001">
    <titulo>El Quijote</titulo>
    <autor>Cervantes</autor>
    <año>1605</año>
  </libro>
</biblioteca>
```

### Ejemplo 2: DTD Externo

**archivo: biblioteca.dtd**
```xml
<!ELEMENT biblioteca (libro+)>
<!ELEMENT libro (titulo, autor, año)>
<!ELEMENT titulo (#PCDATA)>
<!ELEMENT autor (#PCDATA)>
<!ELEMENT año (#PCDATA)>
<!ATTLIST libro 
  isbn ID #REQUIRED
  disponible (si|no) "si"
>
```

**archivo: biblioteca.xml**
```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE biblioteca SYSTEM "biblioteca.dtd">
<biblioteca>
  <libro isbn="L001" disponible="si">
    <titulo>El Quijote</titulo>
    <autor>Cervantes</autor>
    <año>1605</año>
  </libro>
</biblioteca>
```

### Ejemplo 3: Con entidades

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE documento [
  <!ENTITY instituto "IES Miguel de Cervantes">
  <!ENTITY ciudad "Madrid">
  <!ELEMENT documento (#PCDATA)>
]>
<documento>
  Este documento pertenece a &instituto; de &ciudad;.
</documento>
```

---

## 16. PUNTOS CLAVE PARA EXAMEN TIPO TEST

### Preguntas típicas:

🔑 **¿Qué significa standalone="no"?**
→ El documento necesita un DTD externo

🔑 **¿Cuál es la diferencia entre + y * ?**
→ `+` = 1 o más veces, `*` = 0 o más veces

🔑 **¿Qué tipo de atributo permite integridad referencial?**
→ IDREF (hace referencia a un ID)

🔑 **¿Se puede repetir un atributo en un elemento?**
→ NO

🔑 **¿Importa el orden de los atributos?**
→ NO

🔑 **¿Importa el orden de los elementos?**
→ SÍ (cuando se usa coma en el DTD)

🔑 **¿Qué se procesa primero: DTD interno o externo?**
→ DTD interno

🔑 **¿Puede un ID ser un número?**
→ NO, debe empezar por letra o guión bajo

🔑 **¿Qué modificador hace obligatorio un atributo?**
→ #REQUIRED

🔑 **¿Qué elemento permite contenido mixto texto + elementos?**
→ `(#PCDATA | elemento)*`

🔑 **¿Las entidades admiten recursividad?**
→ NO

🔑 **¿Para qué sirve NDATA en entidades?**
→ Para archivos binarios (no analizados)

🔑 **¿Cómo se declara un espacio de nombres?**
→ `xmlns:prefijo="URI"`

🔑 **¿INCLUDE y IGNORE dónde se usan?**
→ En el DTD, para incluir/ignorar secciones

🔑 **¿Cuál es la extensión de un archivo DTD externo?**
→ .dtd

---

## FIN DEL RESUMEN

**Recomendación de estudio:**
1. Lee este resumen 2-3 veces
2. Practica con ejemplos del PDF
3. Haz ejercicios de crear DTD
4. Repasa los puntos clave antes del examen

¡Mucho ánimo con el estudio! 💪
