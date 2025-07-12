***Settings ***
Library     SeleniumLibrary
Resource    ../keywords/open.robot
Resource    ../keywords/keywords_dropdown_handling.robot
Resource     ../variables/variables.robot
Suite Setup     Precondition     ${dropdown_url}
Suite Teardown      Postcondition
*** test cases ***
TC_1
     Dropdown