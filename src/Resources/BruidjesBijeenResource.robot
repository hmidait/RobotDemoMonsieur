*** Settings ***
Documentation     A resource file for Home Page (Deze had ook de extentie .resource kunnen krijgen
...               alleen kan je dan niet automatisch aanvullen in de .robot file)
Library           Selenium2Library

*** Variables ***
${HOMEPAGE}      http://bruidjesbijeen.nl
${BROWSER}        Chrome
${DELAY}          0

*** Keywords ***
Open Browser To view the Page
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Title Should Be    Bruidjes Bijeen – Uw online party planner

Search Topic
    Title Should Be    Bruidjes Bijeen – Uw online party planner
    [Arguments] ${topic}
    Input Text name=search_term ${topic}
    Press Key name=search_term \\13
