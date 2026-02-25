# 🤖 TEMA 4: Inteligencia Artificial
### Digitalización aplicada a los sectores productivos – DAW / Grado Superior

---

## 📋 ÍNDICE RÁPIDO
1. [¿Qué es la IA?](#1-qué-es-la-ia)
2. [Historia y evolución](#2-historia-y-evolución)
3. [Tipos de IA](#3-tipos-de-ia)
4. [IA, Machine Learning y Deep Learning](#4-ia-machine-learning-y-deep-learning)
5. [Fundamentos: datos, algoritmos y redes neuronales](#5-fundamentos-datos-algoritmos-y-redes-neuronales)
6. [Riesgos y desafíos éticos](#6-riesgos-y-desafíos-éticos)
7. [Marco legal: Ley IA Europea y LOPDGDD](#7-marco-legal-ley-ia-europea-y-lopdgdd)
8. [Tendencias emergentes](#8-tendencias-emergentes)
9. [El futuro del trabajo](#9-el-futuro-del-trabajo)
10. [IA y Sostenibilidad (ODS)](#10-ia-y-sostenibilidad-ods)

---

## 1. ¿Qué es la IA?

> **Definición clave:** Disciplina tecnológica que diseña sistemas informáticos capaces de realizar tareas que normalmente requieren inteligencia humana.

**¿Qué combina la IA?**
- Informática, matemáticas, estadística, lógica y neurociencia

**Tareas que realiza la IA:**
- Comprensión del lenguaje natural
- Aprendizaje a partir de datos
- Toma de decisiones
- Resolución de problemas
- Percepción sensorial

**Ejemplos cotidianos:**
- Siri, Alexa (asistentes de voz)
- Netflix, Spotify (recomendaciones)
- Google Translate (traducción automática)

> 💡 **Para el examen:** La IA es una herramienta **disruptiva** → transforma procesos productivos e interacciones cotidianas. No hace falta ser programador para usarla, pero sí entender cómo funciona.

---

## 2. Historia y Evolución

```
1940-1950 → 1956-1980 → 1974-1980 → 1980-2000 → 1987-1993 → 2000-presente
Primeros   Era         1er Invierno  Aprendizaje  2º Invierno  Big Data +
 pasos    simbólica     de la IA     automático   de la IA    Deep Learning
```

### 2.1 Primeros pasos (1940-1950)
- **1950** → Alan Turing propone el **Test de Turing** (¿puede una máquina imitar el pensamiento humano?)
- **1956** → Conferencia de Dartmouth: se acuña el término "Inteligencia Artificial"
  - Participantes: **John McCarthy, Marvin Minsky, Allen Newell**

### 2.2 Era simbólica (1956-1980)
- IA basada en **reglas lógicas**
- Programas que jugaban al ajedrez o resolvían problemas matemáticos
- **Limitación:** dependían de programación explícita, **no aprendían solos**

### 2.3 Primer invierno de la IA (1974-1980)
- Causas: altas expectativas + resultados lentos = **pérdida de confianza y financiación**

### 2.4 Llegada del aprendizaje automático (1980-2000)
- Años 80: **Sistemas expertos** → simulan el juicio humano en áreas concretas (ej: diagnóstico médico)
- Años 90: Nace el **Machine Learning** → los sistemas aprenden de los datos

### 2.5 Segundo invierno de la IA (1987-1993)
- Causas: coste y complejidad de los sistemas expertos + falta de flexibilidad

### 2.6 Revolución Big Data y Deep Learning (2000-presente)
- **3 factores clave del renacimiento:**
  1. Acceso a grandes cantidades de datos (Big Data)
  2. Aumento de la capacidad computacional
  3. Avances en redes neuronales artificiales
- **2012** → Algoritmo de Deep Learning identifica objetos en imágenes con gran precisión → inicio de nueva era
- Logros: coches autónomos, reconocimiento facial, asistentes virtuales

### 2.7 Presente y futuro
- Modelos generativos: **ChatGPT, DALL·E**
- Debates sobre riesgos y marcos legales
- Ejemplo global: DeepMind (Google) desarrolló **AlphaGo** que venció a campeones humanos en Go

---

## 3. Tipos de IA

> **Clasificación según nivel de capacidad y autonomía** → 3 categorías

### 3.1 IA Estrecha – ANI (Artificial Narrow Intelligence)
- También llamada **IA débil**
- Diseñada para **tareas específicas**
- Es la más común hoy en día
- **No puede** realizar tareas fuera de su programación

| Ejemplos |
|----------|
| Siri, Alexa |
| Algoritmos de recomendación (Netflix, TikTok) |
| Reconocimiento de imágenes médicas |
| Predicción de demanda en logística |

### 3.2 IA General – AGI (Artificial General Intelligence)
- **Capacidad cognitiva similar a la humana**
- Capaz de razonar y aprender en múltiples áreas
- **⚠️ Todavía NO existe en la realidad** (objetivo a largo plazo)
- Plantea importantes dilemas éticos y sociales

### 3.3 IA Superinteligente – ASI (Artificial Superintelligence)
- **Hipotética** → superaría ampliamente las capacidades humanas en TODO
- Creatividad, resolución de problemas, razonamiento emocional, toma de decisiones
- **⚠️ NO existe, es especulativa**
- Nick Bostrom advierte sobre sus riesgos
- Concepto clave: **"singularidad tecnológica"** → IA que evoluciona más allá del control humano

> 💡 **Regla para el examen:**
> - ANI = existe y es habitual → tareas concretas
> - AGI = no existe, objetivo futuro → similar a humanos
> - ASI = no existe, hipotética → supera a humanos en todo

---

## 4. IA, Machine Learning y Deep Learning

> **Son conceptos relacionados pero NO sinónimos.** La IA es el paraguas general.

```
            [ INTELIGENCIA ARTIFICIAL ]
                        |
               [ MACHINE LEARNING ]
                        |
                [ DEEP LEARNING ]
```

### 4.1 Inteligencia Artificial (IA)
- Campo **general** que engloba todas las técnicas para realizar tareas que requieren inteligencia humana
- Es el "paraguas" que contiene al ML y al DL

### 4.2 Machine Learning (ML) – Aprendizaje Automático
- Rama de la IA que permite aprender **a partir de datos** sin programación explícita
- Los algoritmos **identifican patrones** en los datos

**3 pasos clave de un modelo ML:**
1. Recopilar datos
2. Entrenar el modelo
3. Validar su funcionamiento

**Algoritmos comunes en ML:**
- Árbol de decisión
- Vecino más cercano (KNN)
- Máquinas de soporte vectorial (SVM)

### 4.3 Deep Learning (DL) – Aprendizaje Profundo
- **Subcategoría del ML** que usa redes neuronales artificiales con **muchas capas**
- Imita (en parte) el funcionamiento del cerebro humano
- Muy eficaz para tareas complejas

**Casos de uso DL:**
- Reconocimiento de voz e imágenes
- Traducción automática
- Vehículos autónomos
- Google Lens, filtros de redes sociales

---

## 5. Fundamentos: Datos, Algoritmos y Redes Neuronales

> **3 elementos fundamentales para que funcione una IA:**

### 5.1 Datos – "El combustible de la IA"
- **Materia prima** de la IA, sin ellos no hay aprendizaje
- Tipos: números, texto, imágenes, sonidos, cualquier información digitalizable
- **A más datos de calidad → mejores resultados**
- Relación con **Big Data**: análisis masivo → optimización de procesos, toma de decisiones basada en evidencia, predicción de tendencias

### 5.2 Algoritmos – "Las instrucciones inteligentes"
- Serie de pasos/instrucciones para resolver un problema
- **Procesan los datos y aprenden patrones** a partir de ellos
- Más preciso y eficiente el algoritmo → mejor rendimiento del sistema

### 5.3 Redes Neuronales – "Simulando el cerebro humano"
- Estructuras matemáticas inspiradas en el cerebro
- Formadas por **nodos (neuronas artificiales)** organizadas en capas conectadas entre sí
- Cada conexión tiene un **"peso"** que se ajusta durante el entrenamiento
- Más capas y nodos → mayor capacidad de aprendizaje
- Redes con muchas capas = **"redes profundas"** → base del Deep Learning

**Aplicaciones de redes neuronales:**
- Traducción automática
- Reconocimiento de voz
- Detección de tumores en imágenes médicas

### 5.4 Lenguajes de Programación comunes en IA

| Lenguaje | Uso principal |
|----------|--------------|
| **Python** | El más usado. Versátil, muchas bibliotecas para ML y análisis de datos |
| **R** | Popular en estadística |
| **Java** | Aplicaciones empresariales y móviles con IA |
| **Prolog** | Procesamiento simbólico y lógica (históricamente relevante) |

---

## 6. Riesgos y Desafíos Éticos

### 6.1 Sesgos algorítmicos ⚠️
- La IA aprende de los datos → **si los datos tienen prejuicios, la IA los reproduce y amplifica**
- **Ejemplo real:** sistema de contratación automatizado que discriminaba a mujeres porque los datos de entrenamiento estaban sesgados hacia candidatos masculinos

**Soluciones:**
- Usar IA de forma **transparente**
- Revisar datos y decisiones continuamente
- Formar a profesionales para detectar y corregir sesgos

### 6.2 Privacidad y vigilancia 🔒
- Los sistemas de IA necesitan **grandes cantidades de datos personales**
- Riesgo de **vigilancia masiva** si no hay límites claros
- Ejemplo: reconocimiento facial en vía pública → pérdida del anonimato
- En España → obligatorio respetar la Ley de Protección de Datos

### 6.3 Dependencia tecnológica 💻
- Uso excesivo de IA → **pérdida de habilidades humanas**
- Si la tecnología falla y no hay plan de respaldo → problemas críticos
- Riesgo: dejar de pensar de forma crítica
- **Solución:** uso equilibrado y responsable, conocer las limitaciones

### 6.4 IA y Seguridad 🛡️
**Doble vertiente:**

| IA como RIESGO | IA como HERRAMIENTA DE SEGURIDAD |
|----------------|----------------------------------|
| Vulnerable a ataques maliciosos | Ciberseguridad: detecta intrusiones y patrones anómalos |
| Manipulación de datos de entrenamiento | Detección y prevención de fraudes (Big Data) |
| Alteración de algoritmos para forzar resultados | Sistemas de vigilancia inteligente |
| Fallos críticos por excesiva dependencia | Monitorización de entornos controlados |

---

## 7. Marco Legal: Ley IA Europea y LOPDGDD

### 7.1 Ley Europea de IA (2024) – Clasificación de riesgos

> Primera ley de IA del mundo. No prohíbe la IA, sino que la **regula según el nivel de riesgo**.

| Nivel de Riesgo | Regulación | Ejemplos |
|-----------------|------------|---------|
| 🔴 **Riesgo inaceptable** | **PROHIBIDA** | Puntuaciones sociales estilo China |
| 🟠 **Alto riesgo** | Permitida con **estrictas obligaciones** | IA en sanidad, educación, RRHH |
| 🟡 **Riesgo limitado** | Debe **informar** de su uso | Chatbots que interactúan con personas |
| 🟢 **Riesgo mínimo** | Sin restricciones específicas | Filtros de spam, asistentes personales |

### 7.2 LOPDGDD – Protección de datos en España
- Ley Orgánica de Protección de Datos y Garantía de Derechos Digitales
- Adapta el **RGPD** europeo a España

**Principios que debe respetar cualquier IA que use datos personales:**
- ✅ **Consentimiento informado** del usuario
- ✅ **Minimización de datos**: solo recoger lo necesario
- ✅ **Derecho al olvido** y a la portabilidad
- ✅ **Transparencia** en el tratamiento de datos

### 7.3 Ética del diseño de sistemas inteligentes

**4 principios éticos fundamentales:**

| Principio | Significado |
|-----------|-------------|
| **Justicia** | Evitar discriminación o sesgos |
| **Responsabilidad** | Siempre debe haber supervisión humana |
| **Explicabilidad** | Las decisiones de la IA deben poder explicarse |
| **Seguridad** | Minimizar el riesgo de errores o usos maliciosos |

---

## 8. Tendencias Emergentes

### 8.1 IA Generativa
- Capaz de **crear nuevos contenidos** a partir de datos existentes
- Genera: textos, imágenes, vídeos, música, código
- Se basa en redes neuronales entrenadas con enormes volúmenes de datos

| Herramienta | Función |
|-------------|---------|
| **ChatGPT** | Genera textos y responde preguntas |
| **DALL·E / MidJourney** | Crean imágenes a partir de descripciones |
| **Runway ML / Sora** | Generan vídeo de forma automatizada |

### 8.2 IA Explicable (XAI – eXplainable Artificial Intelligence)
- **Problema:** las decisiones de la IA tradicional no siempre son comprensibles
- **Objetivo:** que los sistemas puedan **explicar cómo y por qué** llegaron a una conclusión
- Especialmente importante en: medicina, justicia, educación
- Beneficio: genera confianza y facilita la supervisión humana

### 8.3 Metaverso y entornos inmersivos
- **Metaverso:** entorno virtual compartido donde personas interactúan mediante avatares
- Combina: IA + Realidad Virtual (VR) + Realidad Aumentada (AR) + redes sociales
- Todavía en desarrollo

**Posibilidades en formación:**
- Simulaciones de procesos industriales o sanitarios
- Clases prácticas en entornos seguros y virtuales
- Formación a distancia con experiencia inmersiva

---

## 9. El Futuro del Trabajo

### 9.1 Nuevas competencias digitales clave

| Competencia | Descripción |
|-------------|-------------|
| **Pensamiento computacional** | Entender cómo estructurar problemas para que los resuelva una máquina |
| **Alfabetización en datos** | Saber interpretar, visualizar y usar datos |
| **Colaboración con IA** | Trabajar con la IA como herramienta de apoyo |

### 9.2 Empleos emergentes con IA
- **Entrenador de IA** → entrena modelos con datos adecuados
- **Analista / Científico de datos**
- **Desarrollador de interfaces con IA** (chatbots, asistentes)
- **Especialista en ética de la IA** → evalúa riesgos y cumplimiento normativo

> 💡 Las profesiones tradicionales también se transforman: agricultores con drones e IA, sanitarios con diagnósticos asistidos por IA, etc.

---

## 10. IA y Sostenibilidad (ODS)

### 10.1 Predicción climática
- ML aplicado para predecir sequías, olas de calor, inundaciones
- Planificar cultivos adaptados al clima
- Optimizar sistemas de riego

### 10.2 Eficiencia energética
- **Domótica:** ajusta calefacción y luz según ocupación
- **Redes eléctricas inteligentes:** equilibran producción y demanda
- **Transporte y logística:** optimización para reducir emisiones

### 10.3 IA y los 17 ODS de la Agenda 2030

| ODS | Aplicación de la IA |
|-----|---------------------|
| Salud y bienestar | Detección precoz de enfermedades |
| Educación de calidad | Sistemas personalizados de aprendizaje |
| Industria e innovación | Automatización sostenible |
| Acción por el clima | Monitoreo ambiental |

> ⚠️ **Importante:** el uso de la IA no debe contradecir los ODS. El desarrollo tecnológico debe ser **inclusivo y respetuoso con los derechos humanos**.

---

## 🧠 RESUMEN ULTRA-RÁPIDO PARA REPASAR

| Concepto | Lo esencial |
|----------|-------------|
| **IA** | Sistemas que imitan la inteligencia humana |
| **ANI** | IA actual, tareas específicas ✅ existe |
| **AGI** | IA con capacidad humana general ❌ no existe aún |
| **ASI** | IA que supera al humano en todo ❌ hipotética |
| **ML** | Aprende de datos sin programación explícita |
| **DL** | Subcategoría del ML con redes neuronales profundas |
| **Datos** | Combustible de la IA |
| **Algoritmos** | Instrucciones que procesan los datos |
| **Redes neuronales** | Estructura inspirada en el cerebro, base del DL |
| **Sesgos** | IA aprende prejuicios si los datos los tienen |
| **Ley EU IA 2024** | Clasifica riesgos: inaceptable / alto / limitado / mínimo |
| **LOPDGDD** | Protección de datos en España (adapta el RGPD) |
| **XAI** | IA que puede explicar sus decisiones |
| **IA Generativa** | Crea contenidos nuevos (ChatGPT, DALL·E) |
| **Python** | Lenguaje más usado en IA |

---

## ❓ PREGUNTAS TÍPICAS DE EXAMEN

**1. ¿Qué diferencia hay entre ML y DL?**
> El ML es una rama de la IA que aprende de datos. El DL es una subcategoría del ML que usa redes neuronales con muchas capas.

**2. ¿Qué es un sesgo algorítmico?**
> Cuando la IA reproduce o amplifica prejuicios presentes en los datos de entrenamiento, tomando decisiones injustas.

**3. ¿Cuáles son los 4 niveles de riesgo de la Ley Europea de IA?**
> Inaceptable (prohibida), alto riesgo (con obligaciones), riesgo limitado (debe informar), riesgo mínimo (sin restricciones).

**4. ¿Cuáles son los 3 elementos fundamentales de una IA?**
> Datos, algoritmos y redes neuronales.

**5. ¿Existe hoy en día la AGI?**
> No, todavía no existe. Es un objetivo a largo plazo de la investigación en IA.

**6. ¿Qué es la XAI?**
> IA explicable: sistemas que pueden justificar cómo y por qué tomaron una decisión. Importante en medicina, justicia y educación.

**7. ¿Qué principios debe respetar la IA según la LOPDGDD?**
> Consentimiento informado, minimización de datos, derecho al olvido y transparencia.

**8. ¿Cuáles son los 4 principios éticos del diseño de sistemas de IA?**
> Justicia, responsabilidad, explicabilidad y seguridad.

---

*Resumen elaborado a partir del material oficial del módulo "Digitalización aplicada a los sectores productivos GS" – Bloque 4: Inteligencia Artificial.*
