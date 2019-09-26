namespace: VMFlow
flow:
  name: CreateNewVM
  inputs:
    - TIME:
        default: '1'
        required: false
  workflow:
    - verify_url_is_accessible:
        do:
          io.cloudslang.base.http.verify_url_is_accessible:
            - url: 10.41.37.217
        publish:
          - output_message
        navigate:
          - SUCCESS: is_true
          - FAILURE: on_failure
    - is_true:
        do:
          io.cloudslang.base.utils.is_true:
            - bool_value: ture
        navigate:
          - 'TRUE': SUCCESS
          - 'FALSE': FAILURE
  outputs:
    - flow_output_0: '1'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      verify_url_is_accessible:
        x: 45
        'y': 142
      is_true:
        x: 292
        'y': 130
        navigate:
          23601dea-9da5-5c11-b5db-2c0122585312:
            targetId: 1bbbc7cf-1a58-5ec6-9dd8-3c0e3794e8ac
            port: 'TRUE'
          387d5dca-cb20-c3c0-1d8d-04947537a4da:
            targetId: ab161732-a7c0-48f3-24ce-855fae4ba42f
            port: 'FALSE'
    results:
      SUCCESS:
        1bbbc7cf-1a58-5ec6-9dd8-3c0e3794e8ac:
          x: 445
          'y': 206
      FAILURE:
        ab161732-a7c0-48f3-24ce-855fae4ba42f:
          x: 442
          'y': -14
