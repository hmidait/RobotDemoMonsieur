*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${LOGIN URL}      http://bruidjesbijeen.nl
${BROWSER}        Chrome

*** Test Cases ***
Valid view page
    Open Browser To view the Page
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To view the Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Bruidjes Bijeen – Uw online party planner



