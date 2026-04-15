let $tienda := doc("tienda.xml")/tienda
return
  <informeVentas>
    <estadisticas>
      <totalPedidos>{count($tienda/pedidos/pedido)}</totalPedidos>
      <ingresosTotales>{sum($tienda/pedidos/pedido/total)}</ingresosTotales>
      <clientesRegistrados>{count($tienda/clientes/cliente)}</clientesRegistrados>
    </estadisticas>

    <productosMasVendidos>
    {
      for $producto at $pos in $tienda/catalogo/categoria/producto
      let $ventas := sum(
        $tienda/pedidos/pedido/lineas/linea[
          productoRef eq $producto/@id
        ]/cantidad
      )
      order by $ventas descending
      where $pos <= 5
      return
        <producto>
          <nombre>{$producto/nombre/text()}</nombre>
          <unidadesVendidas>{$ventas}</unidadesVendidas>
        </producto>
    }
    </productosMasVendidos>
    <clientesPorGasto>
    </clientesPorGasto>
  </informeVentas>