*** Settings ***
Documentation     A resource file for ParaBank Demo app (Deze had ook de extentie .resource kunnen krijgen
...               alleen kan je dan niet automatisch aanvullen in de .robot file)
Library           Selenium2Library


*** Variables ***
${HOMEPAGE}       https://parabank.parasoft.com/
${BROWSER}        Chrome
${DELAY}          1000

*** Keywords ***
Open Browser To view the Page
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Maximize Browser Window
    Title Should Be   ParaBank | Welcome | Online Banking

Input Username
    [Arguments]     ${username}
    Input Text      name=username   ${username}

Input Password
    [Arguments]     ${password}
    Input Text      name=password   ${password}

Click On Login
    Click Button    //*[@class="button"]

User "${username}" logs in with password "${password}"
    Input username      ${username}
    Input Password      ${password}

User is logged in
    Title Should Be   ParaBank | Accounts Overview

Delay
    Set Selenium Speed    ${DELAY}

