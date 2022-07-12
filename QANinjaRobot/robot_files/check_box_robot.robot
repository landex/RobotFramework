*** Settings ***
Library         SeleniumLibrary

Test Setup      NewSection
Test Teardown   CloseSection

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_ironman}    css:input[value='iron-man']
${check_panter}     xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Check Box Validation - With ID
    [tags]      thor
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}             #-> Key word of Selenium to get check box
    Checkbox Should Be Selected     ${check_thor}             #-> Key word of Selenium to confirm the checkbox was selected
    Sleep                           3                   #-> TO see the actions

Check Box Validation - Without ID - css selector
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}     #-> In this case we not have Id is necessary use a CSS selector to find the checkBox
    Checkbox Should Be Selected     ${check_ironman}
    Sleep                           3

Check Box Validation - Without ID - Xpath
    [tags]      panther
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panter}
    Checkbox Should Be Selected     ${check_panter}
    Sleep                           3
 
*** Keywords ***
NewSection
    Open Browser                    ${url}              chrome      #-> Creating customized keywords
CloseSection
    Close Browser                                                   # With this solution, is not necessary repeate the commands to open and close brownse