*** Settings ***
Resource        base.robot      #-> To import my resource file

Test Setup      NewSection
Test Teardown   CloseSection

*** Test Cases ***
Select radio by id
        [tags]      cap,radio_id
        Go To                           ${url}/radios       #-> To access radio page
        Select Radio Button             movies      cap     #-> The Robot key word to select a radio butto, have 2 parameters 1 - group 2 - id
        Radio Button Should Be Set To   movies      cap     #-> To confirm the radio button as expected
        Sleep                           2                   #-> Sleep to check visually

Select radio by value
        [tags]      iron,radio_value
        Go To                           ${url}/radios
        Select Radio Button             movies      iron-man    #-> Use the value to select radio button
        Radio Button Should Be Set To   movies      iron-man 
        Sleep                           2