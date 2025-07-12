*** settings ***
Library    SeleniumLibrary
Resource     ../variables/variables.robot
Resource     ../keywords/open.robot
Resource     ../keywords/keywords_checkbox_handling.robot
Suite Setup    Precondition    ${textbox_url}
Suite Teardown    Postcondition

*** test cases ***
Tc_2
    Checkbox