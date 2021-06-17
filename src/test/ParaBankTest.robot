*** Settings ***
Documentation     A simple test for the homepage of bruidjes bijeen
Resource          ../Resources/ParaBankResource.robot


*** Test Cases ***
Valid Login ParaBank
    Given Open Browser To view the Page
    When User "demo1" logs in with password "demo1"
    And Click On Login
    Then User is logged in
    [Teardown]  Close Browser

