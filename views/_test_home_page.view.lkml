view: _test_home_page {

  measure: _html {

    sql: 1 ;;

    html: <div>

                  {% if _user_attributes['foo'] == 'bar' %}

      bar

      {% elsif _user_attributes['foo'] != 'bar' %}

      not bar!

      {% endif %}

      </div>;;

  }
  }
