*** Settings ***

Resource        base.robot
Library         solve_problem.py

Test Setup      NewSection
Test Teardown   CloseSection

*** Test Cases ***

Login with success - With CSS Selector
    Go To                   ${url}/login
    Input Text              css:input[name=username]    stark
    Input Text              css:input[name=password]    jarvis!
    Click Element           class:btn-login             #-> To Make login we use the class found in HTML code
    Page Should Contain     Olá, Tony Stark.            #-> To check if page have text to indicate that login was done with success

#Login without success