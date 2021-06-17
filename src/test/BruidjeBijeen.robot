*** Settings ***
Documentation     A simple test for the homepage of bruidjes bijeen
Resource          BruidjesBijeenResource.robot


*** Test Cases ***
Valid view page
    Open Browser To view the Page
#    Search Topic Test
    [Teardown]    Close Browser






