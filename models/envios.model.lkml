# Define the database connection to be used for this model.
connection: "envios"

# include all the views
include: "/views/**/*.view"
include: "//proyecto_integrador_looker/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: envios_datagroup {
  sql_trigger: SELECT MAX(order_id) FROM envios;;
  max_cache_age: "1 hour"
}

persist_with: envios_datagroup

access_grant: limitacion {
  user_attribute: sector_empresa
  allowed_values: ["Recursos humanos", "Finanzas"]
}

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Envios"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: envios {
  sql_always_where: ${segundo_filtro} ;;
}
explore: mensajes_vista1 {
}
