*** Settings ***
Resource        base.robot      #-> To import my resource file
Library         solve_problem.py
Test Setup      NewSection
Test Teardown   CloseSection

*** Test Cases ***

Select by text
    Go To                           ${url}/dropdown
    Select From List by Label       class:avenger-list      Scott Lang      #-> Using Class and select by label
    
Select by Value
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown             6               #-> Select by ID of element at select list