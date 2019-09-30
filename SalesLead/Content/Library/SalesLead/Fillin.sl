namespace: SalesLead
operation:
  name: Fillin
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  sequential_action:
    gav: com.microfocus.seq:SalesLead.Fillin:1.0.0
    steps:
    - step:
        id: '1'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("1.Sales Lead NameSingle")
        action: Set
        default_args: '"Phaithoon"'
        snapshot: .\Snapshots\ssf1.html
        highlight_id: '10000000'
    - step:
        id: '2'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("2.SurnameSingle line text")
        action: Set
        default_args: '"wassanadumrongdee"'
        snapshot: .\Snapshots\ssf2.html
        highlight_id: '10000000'
    - step:
        id: '3'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("3.EmailSingle line text")
        action: Set
        default_args: '"phaitwas@metroconnect.co.th"'
        snapshot: .\Snapshots\ssf3.html
        highlight_id: '10000000'
    - step:
        id: '4'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("4.PositionSingle line")
        action: Set
        default_args: '"System Engineer"'
        snapshot: .\Snapshots\ssf4.html
        highlight_id: '10000000'
    - step:
        id: '5'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("5.CompanySingle line text")
        action: Set
        default_args: '"MCC"'
        snapshot: .\Snapshots\ssf5.html
        highlight_id: '10000000'
    - step:
        id: '6'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("6.TelephoneSingle line")
        action: Set
        default_args: '"020894344"'
        snapshot: .\Snapshots\ssf6.html
        highlight_id: '10000000'
    - step:
        id: '7'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("7.Company AddressSingle")
        action: Set
        default_args: '"400 Chalermkiat Rama IX Road., Nong Bon, Prawet, Bangkok"'
        snapshot: .\Snapshots\ssf7.html
        highlight_id: '10000000'
    - step:
        id: '8'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("8.Postal CodeSingle line")
        action: Set
        default_args: '"10250"'
        snapshot: .\Snapshots\ssf8.html
        highlight_id: '10000000'
    - step:
        id: '9'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebEdit("9.Special CodeSingle line")
        action: Set
        default_args: '"AB01"'
        snapshot: .\Snapshots\ssf9.html
        highlight_id: '10000000'
    - step:
        id: '10'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebRadioGroup("Yes")
        action: Select
        default_args: '"Yes"'
        snapshot: .\Snapshots\ssf10.html
        highlight_id: '10000000'
    - step:
        id: '11'
        object_path: Browser("RPA - UFT -Sales Lead").Page("RPA - UFT -Sales Lead").WebButton("Submit")
        action: Click
        snapshot: .\Snapshots\ssf11.html
        highlight_id: '10000000'
  results:
  - SUCCESS
  - WARNING
  - FAILURE
