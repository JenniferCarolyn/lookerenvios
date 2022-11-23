view: pdt {
    derived_table: {
      explore_source: envios {
        column: pa__s_de_destino {}
        column: total_items_por_cantidad {}
      }
    }
    dimension: pa__s_de_destino {
      label: "Envios País de destino"
      description: ""
    }
    dimension: total_items_por_cantidad {
      description: ""
      type: number
    }
  }
