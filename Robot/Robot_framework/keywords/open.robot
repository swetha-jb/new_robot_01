***settings ***
Library     SeleniumLibrary

***keywords ***
Precondition
    [Arguments]     ${url}
    Open Browser     ${url}   Chrome
Postcondition
    Close Browser