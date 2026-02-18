# 📚 UT1 — Reconocimiento de las características de los lenguajes de marcas

---

# 1. Lenguajes de marcas

## 1.1 ¿Qué es un lenguaje de marcas?

Un **lenguaje de marcas** es un sistema que permite:

- Codificar documentos mediante **etiquetas**
- Definir su **estructura**
- Añadir información semántica
- Separar contenido y formato
- Permitir intercambio entre aplicaciones

No es un lenguaje de programación.

---

## 1.2 ¿Para qué se utilizan?

- Dar formato a documentos
- Definir la estructura lógica de los datos
- Facilitar el intercambio de información
- Representar información de forma independiente de la plataforma

---

## 1.3 Clasificación

### 🔹 Lenguajes de presentación
Definen cómo se muestra el texto.

Ejemplo: RTF

### 🔹 Lenguajes de procedimientos
Indican cómo debe procesarse el documento en orden secuencial.

### 🔹 Lenguajes descriptivos o semánticos
Describen la estructura del documento sin definir su presentación.

Ejemplo: XML

---

# 2. Evolución de los lenguajes de marcas

## 2.1 GML (Generalized Markup Language)

- Creado por IBM
- Independiente de plataforma
- Permitía estructurar documentos

---

## 2.2 SGML (Standard Generalized Markup Language)

- Estándar ISO 8879 (1986)
- Muy potente pero complejo
- Solo trabaja con documentos válidos
- Herramientas costosas

---

## 2.3 HTML (HyperText Markup Language)

Creado por Tim Berners-Lee en 1989.

Basado en:
- ASCII
- SGML

### Ventajas
- Fácil
- Estándar web
- Muy extendido

### Problemas
- Mezcla estructura y diseño
- No es flexible
- Etiquetas limitadas
- No orientado al intercambio de datos

---

## 2.4 XML (eXtensible Markup Language)

Creado por el W3C en 1998.

### Características

- Permite definir etiquetas propias
- Permite definir atributos
- Separa estructura y diseño
- Es extensible
- Compatible con SGML
- Independiente de plataforma
- Legible para humanos
- Formato universal de intercambio

---

# 3. Comparaciones importantes

## 3.1 XML vs HTML

| XML | HTML |
|------|------|
| Perfil de SGML | Aplicación de SGML |
| Define etiquetas propias | Etiquetas predefinidas |
| Orientado a datos | Orientado a presentación |
| Separa estructura y diseño | Mezcla estructura y diseño |
| Modelo de enlaces complejo | Modelo simple |

---

## 3.2 XML vs SGML

| XML | SGML |
|------|------|
| Uso sencillo | Uso complejo |
| No exige validación obligatoria | Solo documentos válidos |
| Bajo coste | Herramientas costosas |
| Muy utilizado | Uso específico |
| Compatible con HTML | No integración clara |

---

# 4. Etiquetas

Las etiquetas:

- Se escriben entre `<` y `>`
- Tienen apertura y cierre
- Son sensibles a mayúsculas y minúsculas

Ejemplo:

```xml
<titulo>XML práctico</titulo>

Etiqueta vacía:

    <elemento/>

También puede escribirse como:

    <elemento></elemento>

---

## 4.1 Reglas importantes sobre etiquetas

- Debe existir **un único elemento raíz**.
- Todas las etiquetas deben tener **apertura y cierre**, salvo las vacías.
- Las etiquetas deben estar **correctamente anidadas**.
- XML es **case sensitive** (distingue mayúsculas y minúsculas).

❌ Incorrecto:

    <Libro><Autor></Libro></Autor>

✔ Correcto:

    <Libro><Autor></Autor></Libro>

---

## 4.2 Nombres de etiquetas

Deben cumplir las siguientes normas:

- Pueden contener letras, números, guiones `-`, puntos `.` y guiones bajos `_`.
- No pueden contener espacios.
- No pueden comenzar por:
  - Un número
  - Un punto
  - Un guion
  - Dos puntos `:`
  - La palabra `xml` (en cualquier combinación de mayúsculas/minúsculas)

✔ Correcto:

    <titulo_libro>
    <fecha-publicacion>
    <color.favorito>

❌ Incorrecto:

    <2titulo>
    <xmlLibro>
    <color favorito>

---

# 5. Atributos

Los atributos proporcionan información adicional sobre un elemento.

Ejemplo:

    <libro isbn="9781234567890" edicion="1">

---

## 5.1 Reglas de los atributos

- Siempre deben ir entre comillas (`"` o `'`).
- No pueden repetirse dentro del mismo elemento.
- El orden no es relevante.
- Son sensibles a mayúsculas y minúsculas.

❌ Incorrecto:

    <libro isbn="123" isbn="456">

✔ Correcto:

    <libro isbn="123" edicion="1">

---

# 6. Caracteres especiales en XML

No pueden utilizarse directamente los siguientes caracteres:

- `<`
- `>`
- `&`
- `"`
- `'`

Deben sustituirse por entidades:

| Carácter | Entidad  |
|----------|----------|
| `<`      | `&lt;`   |
| `>`      | `&gt;`   |
| `&`      | `&amp;`  |
| `"`      | `&quot;` |
| `'`      | `&apos;` |

Ejemplo:

    <condicion>a &lt; b &amp;&amp; b &gt; 0</condicion>

---

# 7. Comentarios

Se escriben así:

    <!-- Esto es un comentario -->

Reglas:

- No pueden estar dentro de una etiqueta.
- No pueden contener `--`.
- No pueden anidarse.

❌ Incorrecto:

    <!-- Comentario -- interno -->

---

# 8. Secciones CDATA

Permiten incluir texto sin que sea analizado por el parser.

Sintaxis:

    <![CDATA[
    Texto con < y & sin escapar
    ]]>

No puede contener la secuencia:

    ]]>

---

# 9. Documento bien formado

Un documento está bien formado si:

- Tiene un único elemento raíz.
- Todas las etiquetas están cerradas.
- El anidamiento es correcto.
- Respeta mayúsculas y minúsculas.
- Los atributos están correctamente escritos.

---

# 10. Documento válido

Un documento es válido si:

- Está bien formado.
- Cumple una DTD o esquema definido.

---

# 11. Conceptos clave para el examen

Debes tener claro:

- Diferencia entre XML y HTML.
- Diferencia entre XML y SGML.
- Qué es el prólogo.
- Qué es el ejemplar.
- Qué es el elemento raíz.
- Reglas de etiquetas.
- Reglas de atributos.
- Documento bien formado vs válido.
- Función de un procesador XML.

---

# 🔥 Repaso rápido antes del examen

- XML es estructural, HTML es visual.
- Solo puede existir un elemento raíz.
- Todas las etiquetas deben cerrarse.
- XML distingue mayúsculas y minúsculas.
- Bien formado ≠ válido.
- Los atributos siempre van entre comillas.
- Los caracteres especiales deben escaparse.
