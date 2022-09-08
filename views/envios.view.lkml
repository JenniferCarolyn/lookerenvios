# The name of this view in Looker is "Envios"
view: envios {

  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `envios.envios`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Ltimo Evento" in Explore.

  dimension: __ltimo_evento{
    label: "Último evento"
    type: string
    sql: ${TABLE}.__ltimo_evento ;;
  }

  dimension: ultimo_evento_3 {
    type: string
    sql: ${__ltimo_evento} ;;
  }

  dimension: ultimo_evento_6 {
    type: string
    sql: ${__ltimo_evento} ;;
  }

  dimension: awb {
    label: "Código"
    type: string
    sql: ${TABLE}.AWB ;;
  }

  dimension: comprador {
    type: string
    sql: ${TABLE}.Comprador ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: cs {
    label: "Último envio"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CS_Date ;;
  }

  dimension_group: fecha___ltimo_evento {
    label: "Última vez de uso"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha___ltimo_evento ;;
  }

  dimension_group: fecha_primer_evento_controlado {
    label: "Primera vez de uso"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_primer_evento_controlado ;;
  }

  dimension: first_clockstop__cs_ {
    label: "Estatus del envio"
    type: string
    sql: ${TABLE}.First_Clockstop__CS_ ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.ID_cliente ;;
  }

  dimension: items_por_cantidad {
    type: number
    sql: ${TABLE}.Items_por_cantidad ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_items_por_cantidad {
    type: sum
    sql: ${items_por_cantidad} ;;
  }

  measure: average_items_por_cantidad {
    type: average
    sql: ${items_por_cantidad} ;;
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.Nombre_Cliente ;;
  }

  dimension: nro__de_despacho {
    type: number
    sql: ${TABLE}.Nro__de_despacho ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: origin_warehouse_code {
    type: string
    sql: ${TABLE}.Origin_Warehouse_Code ;;
  }

  dimension: pa__s_de_destino {
    label: "País de destino"
    type: string
    sql: ${TABLE}.Pa__s_de_destino ;;
  }

  dimension: peso_verificado {
    type: number
    sql: ${TABLE}.Peso_verificado ;;
  }

  dimension: proveedor {
    type: string
    sql: ${TABLE}.Proveedor ;;
  }

  dimension: service_type {
    label: "Tipo de servicio"
    type: number
    sql: ${TABLE}.ServiceType ;;
  }

  dimension: tarifa_servicio__usd_ {
    type: number
    sql: ${TABLE}.Tarifa_servicio__USD_ ;;
  }

  dimension: tracking_number {
    type: string
    sql: ${TABLE}.Tracking_Number ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
