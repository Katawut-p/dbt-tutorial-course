{#
    Comment zone will not compiled
#}

-- A comment will compiled


{% set test_var %}
    SELECT 1 AS my_col
{% endset %}

{{ test_var }}
{{ test_var }}
{{ test_var }}

{% set my_list = ['a', 'b', 'c', 'd', 'e', 'f'] %}

SELECT
    {%- for item in my_list %}
        {{ item }} {% if not loop.last %}, {% endif %}
    {%- endfor %}
