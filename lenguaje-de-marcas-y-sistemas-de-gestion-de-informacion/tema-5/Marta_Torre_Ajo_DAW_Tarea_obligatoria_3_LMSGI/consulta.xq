let $tienda := doc("tienda.xml")/tienda

let $productos :=
  for $producto in $tienda/catalogo/categoria/producto
  let $ventas := sum(
    $tienda/pedidos/pedido/lineas/linea[
      @productoRef eq $producto/@id
    ]/cantidad
  )
  order by $ventas descending
  return
    <producto>
      <nombre>{$producto/nombre/text()}</nombre>
      <unidadesVendidas>{$ventas}</unidadesVendidas>
    </producto>

let $clientes :=
  for $cliente in $tienda/clientes/cliente
  let $gasto := sum(
    $tienda/pedidos/pedido[
      @clienteRef eq $cliente/@id
    ]/total
  )
  order by $gasto descending
  return
    <cliente>
      <nombre>{$cliente/nombre/text()}</nombre>
      <totalGastado>{round-half-to-even($gasto, 2)}</totalGastado>
    </cliente>

let $clientesVIP :=
  for $cliente in $tienda/clientes/cliente
  let $gasto := sum(
    $tienda/pedidos/pedido[
      @clienteRef eq $cliente/@id
    ]/total
  )
  where $gasto > 1000
  order by $gasto descending
  return
    <cliente>
      <nombre>{$cliente/nombre/text()}</nombre>
      <totalGastado>{round-half-to-even($gasto, 2)}</totalGastado>
    </cliente>

return
  <informeVentas>
    <estadisticas>
      <totalPedidos>{count($tienda/pedidos/pedido)}</totalPedidos>
      <ingresosTotales>{round-half-to-even(sum($tienda/pedidos/pedido/total), 2)}</ingresosTotales>
      <clientesRegistrados>{count($tienda/clientes/cliente)}</clientesRegistrados>
    </estadisticas>

    <productosMasVendidos>
      {subsequence($productos, 1, 5)}
    </productosMasVendidos>

    <clientesPorGasto>
      {$clientes}
    </clientesPorGasto>

    <clientesVIP>
      {$clientesVIP}
    </clientesVIP>
  </informeVentas>