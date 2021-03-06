*** Settings ***

Resource        base.robot 
Library         solve_problem.py

Test Setup      NewSection
Test Teardown   CloseSection

*** Test Cases ***

Verify the value with table line number 1
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors   1   $ 10.000.000   #-> With this will be search the line 1 

Verify the value with table line number 2
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors   2   @vindiesel      #-> To find info in second row of table

Discover row of table by key text - Using xpath
    Go To                           ${url}/tables
    ${target}=                      Get WebElement                  xpath:.//tr[contains(., '@chadwickboseman')]    #-> TO store value in variable
    Log                             ${target.text}                                                                   #-> Generate a log in report generated by Robot
    Log To Console                  ${target.text}                                                                              #-> Generate a log in console
    Should Contain                  ${target.text}                  $ 700.000                                       #-> Using the Row number get in previous command we valiating that this row contains the expected values
    Should Contain                  ${target.text}                  Pantera Negra