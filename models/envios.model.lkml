# Define the database connection to be used for this model.
connection: "envios"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: envios_datagroup {
  sql_trigger: SELECT MAX(order_id) FROM envios;;
  max_cache_age: "12 hour"
}

persist_with: envios_datagroup

#access_grant: limitacion {
 # user_attribute: sector_empresa
  #allowed_values: ["Recursos humanos", "Finanzas"]}


explore: envios {
}
explore: _test_home_page {}
