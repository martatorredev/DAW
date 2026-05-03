<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Informe ejecutivo de ventas</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
          }
          h1, h2 {
            color: #333333;
          }
          table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
          }
          th, td {
            border: 1px solid #999999;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
          .vip {
            background-color: #fff3cd;
            font-weight: bold;
          }
          .estadisticas p {
            margin: 6px 0;
          }
        </style>
      </head>
      <body>
        <h1>Informe ejecutivo de ventas</h1>

        <div class="estadisticas">
          <h2>Estadísticas generales</h2>
          <p>
            <strong>Total de pedidos:</strong>
            <xsl:value-of select="informeVentas/estadisticas/totalPedidos"/>
          </p>
          <p>
            <strong>Ingresos totales:</strong>
            <xsl:value-of select="informeVentas/estadisticas/ingresosTotales"/> €
          </p>
          <p>
            <strong>Clientes registrados:</strong>
            <xsl:value-of select="informeVentas/estadisticas/clientesRegistrados"/>
          </p>
        </div>

        <h2>Productos más vendidos</h2>
        <table>
          <tr>
            <th>Producto</th>
            <th>Unidades vendidas</th>
          </tr>
          <xsl:for-each select="informeVentas/productosMasVendidos/producto">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="unidadesVendidas"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Clientes ordenados por gasto</h2>
        <table>
          <tr>
            <th>Cliente</th>
            <th>Total gastado</th>
          </tr>
          <xsl:for-each select="informeVentas/clientesPorGasto/cliente">
            <tr>
              <xsl:if test="totalGastado &gt; 1000">
                <xsl:attribute name="class">vip</xsl:attribute>
              </xsl:if>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="totalGastado"/> €</td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>