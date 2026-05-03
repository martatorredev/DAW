import module namespace xslt = "http://basex.org/modules/xslt";

xslt:transform-text(
  doc("informe_ventas.xml"),
  doc("transformacion.xsl")
)