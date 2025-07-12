*** settings ***
Library    SeleniumLibrary
Resource     ../variables/variables.robot
Resource     ../keywords/open.robot
Resource     ../keywords/keywords_window_handling.robot
Suite Setup    Precondition    ${textbox_url}
Suite Teardown    Postcondition

*** test cases ***
Tc_5
    Window_handler