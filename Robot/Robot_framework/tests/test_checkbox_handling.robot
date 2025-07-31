*** Settings ***
Library    SeleniumLibrary
Resource     ../variables/variables.robot
Resource     ../keywords/open.robot
Resource    ../keywords/fetch_link_keywords.robot
Suite Setup    Precondition    ${fetchLink}
Suite Teardown    Postcondition
*** Test Cases ***
TC_6
    Fetch_All_Link
    