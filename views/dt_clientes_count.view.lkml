# If necessary, uncomment the line below to include explore_source.

# include: "envios.model.lkml"

view: dt_clientes_count {
  derived_table: {
    datagroup_trigger: envios_datagroup
    explore_source: envios {
      column: count {}
      column: id_cliente {}
    }
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: id_cliente {
    description: ""
    type: number
  }
}
