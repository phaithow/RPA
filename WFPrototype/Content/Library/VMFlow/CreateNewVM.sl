namespace: VMFlow
flow:
  name: CreateNewVM
  workflow:
    - is_true:
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: '${output_message}'
        navigate:
          - 'TRUE': SUCCESS
          - 'FALSE': FAILURE
    - get_time:
        do:
          io.cloudslang.base.datetime.get_time:
            - locale_country: Thailand
            - date_format: '${locale_country}'
        publish:
          - Time: '${output}'
        navigate:
          - SUCCESS: is_true
          - FAILURE: FAILURE
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      get_time:
        x: 50
        'y': 30
        navigate:
          95231e27-9e3a-cabf-4a9d-c8310e2c8e18:
            targetId: 797760cc-794a-a5b5-8b7f-bf7d53e0ee9b
            port: FAILURE
      is_true:
        x: 100
        'y': 250
        navigate:
          c8d48363-feef-a4b8-6255-5ded9200c1fb:
            targetId: 6024eba2-9323-b05c-7b8e-12e85de18da9
            port: 'TRUE'
          d5bc9263-a568-c58d-da33-51d19bbad3e4:
            targetId: 797760cc-794a-a5b5-8b7f-bf7d53e0ee9b
            port: 'FALSE'
    results:
      SUCCESS:
        6024eba2-9323-b05c-7b8e-12e85de18da9:
          x: 400
          'y': 125
      FAILURE:
        797760cc-794a-a5b5-8b7f-bf7d53e0ee9b:
          x: 400
          'y': 375
