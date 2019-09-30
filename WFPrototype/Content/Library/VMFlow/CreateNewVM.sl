namespace: VMFlow
flow:
  name: CreateNewVM
  workflow:
    - get_time:
        do:
          io.cloudslang.base.datetime.get_time:
            - locale_lang: en
            - locale_country: th
            - date_format: null
        publish:
          - Time: '${output}'
        navigate:
          - SUCCESS: is_true
          - FAILURE: on_failure
    - is_true:
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: '${Time}'
        navigate:
          - 'TRUE': SUCCESS
          - 'FALSE': FAILURE
  outputs:
    - flow_output_0: '${Time}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      is_true:
        x: 319
        'y': 248
        navigate:
          c8d48363-feef-a4b8-6255-5ded9200c1fb:
            targetId: 6024eba2-9323-b05c-7b8e-12e85de18da9
            port: 'TRUE'
          d5bc9263-a568-c58d-da33-51d19bbad3e4:
            targetId: 797760cc-794a-a5b5-8b7f-bf7d53e0ee9b
            port: 'FALSE'
      get_time:
        x: 89
        'y': 271
    results:
      FAILURE:
        797760cc-794a-a5b5-8b7f-bf7d53e0ee9b:
          x: 485
          'y': 389
      SUCCESS:
        6024eba2-9323-b05c-7b8e-12e85de18da9:
          x: 400
          'y': 125
