*** Settings ***
Resource        base.robot      #-> To import my resource file
Library         solve_problem.py
Test Setup      NewSection
Test Teardown   CloseSection

*** Test Cases ***

Select by text - And validate by value
    Go To                           ${url}/dropdown
    Select From List by Label       class:avenger-list          Scott Lang      #-> Using Class and select by label
    ${select}=                      Get Selected List Value     class:avenger-list
    Should Be Equal                 ${select}                   7

Select by Value - And validate with text
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                 6               #-> Select by ID of element at select list
    ${selected}=                    Get Selected List Label     id:dropdown
    Should Be Equal                 ${selected}                 Loki