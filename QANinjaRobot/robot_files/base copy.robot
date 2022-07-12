# This file now is a resource, a file that I'll import in testings
# Because we use the same structure to this testings.
*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${url}              https://training-wheels-protocol.herokuapp.com

*** Keywords ***
NewSection
    Open Browser                    ${url}              chrome      #-> Creating customized keywords

CloseSection
    Capture Page Screenshot  
    Close Browser                                                   # With this solution, is not necessary repeate the commands to open and close brownse
                                                     