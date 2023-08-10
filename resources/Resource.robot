*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${BROWSER}      chrome


*** Keywords ***
### Setup e Teardown
Open the browser
    Open Browser    about:blank      ${BROWSER}
    Maximize Browser Window

Close the browser
    #Close Browser