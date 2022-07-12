*** Settings ***
Library     python_app.py


*** Test Cases ***
Validate welcome message returned  

    ${result}=      welcome    Landi
    Log To Console      ${result}  #-> This will store result on log

    # To validate the result is expected
    Should Be Equal     ${result}       Hello Landi, welcome Robot Framework Basic course!