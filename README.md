# MejoraIdentidad

Repositorio con el Manual de Identidad de Marca de Mejora Continua — edición 2026 v1. Es la fuente de verdad para cualquier pieza de comunicación (sitio, redes, propuestas, capacitaciones, documentos) que use la marca Mejora Continua.

Antes de producir cualquier pieza, leer `MejoraContinua-Marca/LEEME.md` (o el resumen operativo en `SKILL.md`).

---

## Qué hay en este repo

El contenido vive en **tres formas paralelas** de la misma información, para distintos usos:

| Ruta | Qué es | Cuándo usarla |
|---|---|---|
| `Manual_de_Identidad_de_Marca_de_Mejora_Continua.pdf` | El manual diseñado, 16 páginas, listo para mostrar | Compartir con agencias, proveedores o clientes que preguntan "¿cómo es la marca?" |
| `MejoraContinua-Marca/` | Carpeta de trabajo completa: documentos fuente (.docx + .pdf), assets, presentaciones | Editar contenido, sacar assets, entender el detalle completo de cada tema |
| `mejora-continua-brand/` + `SKILL.md` | El mismo contenido empaquetado como **Claude Skill** (resumen operativo + `assets/` + `referencias/`) | Que un asistente de IA (Claude u otro) aplique la marca automáticamente al generar piezas |
| `mejora-continua-brand.zip` | Zip de la carpeta `mejora-continua-brand/`, para instalar el skill en otro entorno | Distribuir el skill sin clonar todo el repo |

Los archivos que se repiten entre `MejoraContinua-Marca/` y `mejora-continua-brand/` (logos, PDFs de referencia) son **idénticos** — no son versiones distintas, es la misma fuente en dos estructuras de carpetas.

### Estructura de `MejoraContinua-Marca/`

```
00_MANUAL_DE_MARCA/     El manual diseñado (PDF final)
01_DOCUMENTOS/          Fuente de verdad — cada doc en .docx (editable) y .pdf
  00_CRITERIO_MEDULAR       Documento rector, decide cuando dos criterios se pisan
  00_IDENTIDAD_VISUAL       Logo, color, tipografía, fotografía en detalle
  01_ESTRUCTURAL/           Tono, manifiesto, segmentación, servicios, arquitectura, modalidades
  02_PARTICULAR/            8 buyer personas + perfiles comerciales (material de venta)
  03_PROYECTOS/             Contenido de piezas concretas (hoy: landing de mejoraok.com)
02_ASSETS/
  logos/                    Isotipo y lockups, color y blanco, PNG transparente
  tipografias/BwModelica/   Principal — fuente paga, licencia en LICENCIA.txt, no redistribuir
  tipografias/LeagueSpartan/ Secundaria, libre (OFL)
  fotografia/               Hero aprobado de mejoraok.com, referencia de estándar fotográfico
03_PRESENTACIONES/       Archivo — definiciones ya cerradas con Sindy
LEEME.md                 Documentación completa de esta carpeta
```

### Estructura de `mejora-continua-brand/` (Claude Skill)

```
assets/
  logos/          Mismos PNG que MejoraContinua-Marca/02_ASSETS/logos/
  fonts/          Mismas fuentes que MejoraContinua-Marca/02_ASSETS/tipografias/
referencias/       Mismos PDF que MejoraContinua-Marca/01_DOCUMENTOS/ (nombres normalizados)
  buyer_personas/  Los 8 perfiles en detalle
```

`SKILL.md` (en la raíz) es el resumen operativo de todo el manual: criterio medular, logo, color, tipografía, tono de voz, público y servicios — pensado para que un asistente de IA lo lea entero y aplique la marca sin tener que abrir cada PDF.

---

## Las reglas que no se negocian

- **Nunca a la persona.** El problema siempre es lo que falta — foco, estructura, criterio externo — nunca la capacidad de alguien.
- **Calidez con verdad.** No es consuelo, es cuidado genuino detrás de decir la verdad sin maquillaje.
- **No se vende por precio.** "Sin costo" es letra chica, nunca el gancho de un titular o botón principal.
- **Un solo marco de servicios.** Personal, Organizacional, Comercial, Empresarial + Profesionalización como nivel integrador.
- **Color como puntuación.** Azul `#1A3D84`, rojo `#E1061E`, amarillo `#F7CC13`, sobre blanco — nunca como fondo dominante.

Detalle completo de cada regla en `SKILL.md` y en `MejoraContinua-Marca/LEEME.md`.

---

## Cómo trabajar con este repo

1. **¿Necesitás mostrar la marca a alguien externo?** Mandá `Manual_de_Identidad_de_Marca_de_Mejora_Continua.pdf`. Nada más.
2. **¿Necesitás editar o ampliar contenido?** Trabajá en `MejoraContinua-Marca/01_DOCUMENTOS/`, de lo general a lo particular: primero `00_CRITERIO_MEDULAR`, después el archivo estructural que corresponda, y recién ahí las piezas concretas. Si cambiás un `.docx`, exportá el `.pdf` correspondiente y, si el cambio es de fondo, actualizá también `mejora-continua-brand/referencias/` y `SKILL.md`.
3. **¿Necesitás assets (logo, tipografía, foto de referencia)?** `MejoraContinua-Marca/02_ASSETS/` o el espejo en `mejora-continua-brand/assets/`.
4. **¿Vas a usar un asistente de IA para generar una pieza con esta marca?** Que lea `SKILL.md` primero.

Mantener la duplicación entre `MejoraContinua-Marca/` y `mejora-continua-brand/` sincronizada: todo cambio de fondo en una fuente (`.docx`/`.pdf` en `01_DOCUMENTOS/`, assets en `02_ASSETS/`) debe reflejarse en su par dentro de `mejora-continua-brand/`, y `mejora-continua-brand.zip` debe regenerarse si el skill se redistribuye a otro entorno.

---

Mejora Continua · Edición 2026 · v1
