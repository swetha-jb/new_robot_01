*** settings ***
Library    SeleniumLibrary
Resource     ../variables/variables.robot
Resource     ../keywords/open.robot
Resource     ../keywords/keywords_radio_button_handling.robot
Suite Setup    Precondition    ${radio_url}
Suite Teardown    Postcondition

*** test cases ***
Tc_3
    Radio_Button_click

