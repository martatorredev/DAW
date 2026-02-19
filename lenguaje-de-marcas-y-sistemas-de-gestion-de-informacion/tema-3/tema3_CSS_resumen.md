# Tema 3 – Hojas de Estilo CSS
## Lenguajes de Marcas y Sistemas de Gestión de Información

---

## 3.0 Introducción

**CSS (Cascading Style Sheets)** permite controlar el estilo y formato de múltiples páginas web al mismo tiempo, **separando el contenido de su presentación**.

- Antes de CSS: el formato se definía dentro de las propias etiquetas HTML (difícil de mantener).
- Con CSS: cualquier cambio en el estilo afecta a todas las páginas vinculadas automáticamente.
- Ventajas: mejora la accesibilidad, reduce complejidad de mantenimiento, permite visualizar el documento en múltiples dispositivos.

### Evolución de CSS
| Versión | Año | Notas |
|---------|-----|-------|
| CSS 1 | 1996 | Primera recomendación oficial |
| CSS 2 | 1998 | Segunda recomendación oficial |
| CSS 3 | 1999+ | Dividida en módulos independientes |
| CSS 4 | Actual | Sin especificación integrada, por módulos |

---

## 3.1 Cómo incluir CSS en HTML

Hay **tres formas** de aplicar estilos:

### 1. Declaración en línea ❌ (desaconsejada)
Directamente en el atributo `style` de la etiqueta:
```html
<p style="color: red;">Texto rojo</p>
```

### 2. Declaración interna
En el `<head>` del documento, dentro de `<style>`:
```html
<head>
  <style>
    p { color: green; }
  </style>
</head>
```

### 3. Declaración externa ✅ (recomendada)
Enlazando un fichero `.css` externo desde el `<head>`:
```html
<link rel="stylesheet" href="estilos.css">
```
O mediante `@import`:
```html
<style>
  @import url("formato1.css");
</style>
```

### Precedencia (cascada) — de mayor a menor:
1. Declaración **en línea**
2. Declaración **interna**
3. Declaración **externa**
4. Propiedades por defecto del navegador

### Herencia
Los elementos anidados heredan los estilos de sus elementos contenedores, salvo que tengan sus propios estilos definidos.

### Elemento `<span>`
Se usa para aplicar estilo a texto sin bloque propio:
```html
<p>Parte del texto <span style="color:red">en rojo</span></p>
```

---

## 3.2 Sintaxis de las reglas CSS

```
selector { propiedad: valor; }
```

Ejemplo:
```css
p { color: blue; }
```

- **Selector**: a qué elemento HTML se aplica (`p`)
- **Propiedad**: qué aspecto se modifica (`color`)
- **Valor**: el nuevo valor (`blue`)
- Las declaraciones van entre `{ }` y separadas por `;`
- Una regla puede tener varias declaraciones

---

## 3.3 Cascada y herencia

- Si hay estilos contradictorios, el navegador aplica la **precedencia** indicada arriba (en línea > interna > externa > navegador).
- Los elementos hijos **heredan** los estilos del elemento padre, a menos que tengan sus propios estilos.

---

## 3.4 Selectores

### Selector universal
Aplica a **todos** los elementos:
```css
* { margin: 10px; padding: 5px; }
```

### Selector de etiqueta
Aplica a una etiqueta concreta:
```css
p { text-align: center; }
```
Varias etiquetas con el mismo estilo (separadas por coma):
```css
p, h1, h2 { text-align: center; }
```

### 3.4.1 Selectores de clase
Se asigna una clase con el atributo `class`:
```html
<p class="parrafoCentrado">...</p>
```
CSS solo para `<p>` con esa clase:
```css
p.parrafoCentrado { text-align: center; }
```
CSS para **cualquier** etiqueta con esa clase:
```css
.parrafoCentrado { text-align: center; }
```

### 3.4.2 Selectores de ID
Para un elemento **único** con atributo `id`:
```html
<p id="unico">...</p>
```
```css
#unico { color: blue; }
/* o también */
p#unico { color: blue; }
```
⚠️ El `id` no debe repetirse en la misma página.

### 3.4.3 Selectores descendentes
Aplica a elementos que están **dentro** de otros (no tiene que ser hijo directo):
```css
p h1 { color: red; }       /* h1 dentro de p */
p a b i { color: blue; }   /* varios niveles de anidación */
```
⚠️ NO es lo mismo que:
```css
p, a, b, i { color: blue; }   /* aplica a cada uno por separado */
```

### 3.4.4 Selector hijo `>`
Solo afecta al **primer nivel** de anidamiento (hijo directo):
```css
section > p { color: red; }
```
En este caso, el `<p>` nieto de `<section>` NO se verá afectado.

---

## 3.5 Propiedades principales

### 3.5.1 Color y fondo

| Propiedad | Descripción |
|-----------|-------------|
| `color` | Color del texto |
| `background-color` | Color de fondo |
| `background-image` | Imagen de fondo |
| `background-repeat` | `repeat-x`, `repeat-y`, `no-repeat` |
| `background-attachment` | `scroll` o `fixed` |
| `background-position` | Posición de la imagen de fondo |
| `background` | Shorthand para todas las anteriores |

```css
body { background-color: black; color: yellow; }
p { color: #ffffff; }
```

> ⚠️ Usar valor **RGB** es más fiable que nombres de color. Un color hexadecimal necesita 6 dígitos (o 3 en forma comprimida). Ej: `#ff0066` o `#f06`. Un valor como `#ff06` **NO es válido**.

### 3.5.2 Fuente

| Propiedad | Descripción |
|-----------|-------------|
| `font-size` | Tamaño de fuente |
| `font-family` | Familia tipográfica |
| `font-weight` | Grosor: `normal`, `bold`, `bolder`, 100–900 |
| `font-style` | `normal`, `italic`, `oblique` |
| `font-variant` | `normal`, `small-caps` |
| `line-height` | Alto de línea / espaciado entre líneas |
| `font` | Shorthand: `font-style font-variant font-weight font-size/line-height font-family` |

```css
p { font: italic 900 12px Verdana; }
```

### 3.5.3 Texto

| Propiedad | Descripción |
|-----------|-------------|
| `text-decoration` | `none`, `underline`, `overline`, `line-through`, `blink` |
| `text-align` | `left`, `right`, `center`, `justify` |
| `text-indent` | Tabulación del texto |
| `text-transform` | `capitalize`, `uppercase`, `lowercase`, `none` |
| `word-spacing` | Espaciado entre palabras |
| `letter-spacing` | Espaciado entre letras |
| `vertical-align` | Alineación vertical |
| `line-height` | Altura de línea |

### 3.5.4 Listas

| Propiedad | Descripción |
|-----------|-------------|
| `list-style-type` | Tipo de marcador: `disc`, `circle`, `square`, `decimal`, `lower-roman`, `upper-roman`, `lower-alpha`, `upper-alpha`, `none` |
| `list-style-image` | Imagen como marcador |
| `list-style-position` | `outside` o `inside` |
| `list-style` | Shorthand |

```css
#flecha { list-style-image: url("flecha.png"); }
.circ { list-style-type: circle; }
```

### 3.5.5 Propiedad `display`
Permite cambiar si un elemento es de bloque o de línea, u ocultarlo:
```css
.especial { display: block; }   /* convierte elemento de línea en bloque */
.oculto { display: none; }      /* oculta el elemento */
```

---

## 3.6 Modelo de cajas (Box Model)

Cada elemento HTML es una **caja rectangular** compuesta por:

```
┌─────────────────────────────┐
│         MARGIN (exterior)   │
│  ┌───────────────────────┐  │
│  │      BORDER           │  │
│  │  ┌─────────────────┐  │  │
│  │  │    PADDING      │  │  │
│  │  │  ┌───────────┐  │  │  │
│  │  │  │ CONTENIDO │  │  │  │
│  │  │  └───────────┘  │  │  │
│  │  └─────────────────┘  │  │
│  └───────────────────────┘  │
└─────────────────────────────┘
```

### 3.6.1 Propiedades de caja

**Contenido:**
```css
width: 200px;    /* anchura */
height: 100px;   /* altura */
```

**Padding (margen interior):**
```css
padding: 10px;              /* los 4 lados */
padding: 10px 20px;         /* arriba/abajo | izq/der */
padding: 10px 20px 15px;    /* arriba | lados | abajo */
padding: 5px 10px 15px 20px; /* arriba | der | abajo | izq */
padding-top / padding-bottom / padding-left / padding-right
```

**Border:**
```css
border-color: green;
border-width: 2px;             /* thin | medium | thick | px */
border-style: solid;           /* solid | dashed | dotted | double | ridge | etc. */
/* También por lado: */
border-left-style: dashed;
border-top-color: red;
```

**Margin (margen exterior):**
```css
margin: 10px;
margin-bottom: 2em;
margin-top / margin-bottom / margin-left / margin-right
```

### 3.6.2 Unidades de tamaño

**Absolutas** (siempre el mismo tamaño):
| Unidad | Descripción |
|--------|-------------|
| `px` | Píxeles (la más usada en práctica) |
| `cm` | Centímetros |
| `mm` | Milímetros |
| `in` | Pulgadas |
| `pt` | Puntos |
| `pc` | Picas |

**Relativas** (dependen de otro elemento):
| Unidad | Descripción |
|--------|-------------|
| `%` | Porcentaje del elemento contenedor |
| `em` | Relativa al tamaño de fuente actual |
| `rem` | Relativa al tamaño de fuente del elemento raíz |
| `ex` | Relativa al x-height de la fuente |
| `ch` | Relativa al ancho del carácter "0" |

> 📌 Para **estructura/secciones** → usar `%` o `em` (más flexibles)  
> Para **imágenes/vídeos** → usar `px`

```css
.grande { font-size: 2em; }    /* el doble del tamaño actual */
#s1 { width: 50%; }            /* mitad del contenedor */
```

### 3.6.3 Posicionamiento

**Propiedad `float`:** los elementos "flotan" hacia la izquierda o derecha, colocándose uno junto a otro:
```css
nav {
  float: left;
  width: 10%;
}
section {
  float: left;
  width: 90%;
}
```
Se adapta bien a diferentes tamaños de pantalla. Útil para maquetación con etiquetas semánticas (`<header>`, `<nav>`, `<section>`, `<footer>`).

---

## 3.7 Validador CSS

Puedes validar tu CSS en: **https://jigsaw.w3.org/css-validator/**

---

## 📝 Resumen rápido para el examen

| Concepto | Clave |
|----------|-------|
| Mejor forma de incluir CSS | Fichero externo (`<link>`) |
| Precedencia | En línea > Interna > Externa > Navegador |
| Selector universal | `*` |
| Selector hijo directo | `>` |
| Selector descendente | espacio entre selectores |
| Selector de clase | `.nombreClase` |
| Selector de ID | `#nombreId` |
| Modelo de caja | Contenido → Padding → Border → Margin |
| Color inválido | `#ff06` (4 dígitos hex no es válido) |
| Modificar borde izquierdo | `border-left-width` o `border-width` (ambas son válidas) |
| Unidades relativas | NO dependen solo de una letra del programador (falso) → dependen del elemento contenedor o fuente |

---

*¡Mucha suerte en el examen! 🚴‍♀️💪*
