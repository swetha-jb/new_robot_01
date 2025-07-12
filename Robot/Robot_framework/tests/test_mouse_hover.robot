*** settings ***
Library    SeleniumLibrary
Resource     ../variables/variables.robot
Resource     ../keywords/open.robot
Resource     ../keywords/keywords_mouse_hover.robot
Suite Setup    Precondition    ${hover_url}
Suite Teardown    Postcondition

*** test cases ***
Tc_4
    Mouese_Over_to_amazon
