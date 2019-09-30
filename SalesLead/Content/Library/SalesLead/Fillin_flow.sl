namespace: SalesLead
flow:
  name: Fillin_flow
  workflow:
  - Fillin:
      do:
        SalesLead.Fillin: []
      publish:
      - return_result
      - error_message
      navigate:
      - SUCCESS: SUCCESS
      - WARNING: SUCCESS
      - FAILURE: on_failure
  outputs:
  - return_result
  - error_message
  results:
  - SUCCESS
  - FAILURE
