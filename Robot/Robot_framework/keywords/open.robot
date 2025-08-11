*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     Process

*** Keywords ***
Precondition
    [Arguments]     ${url}
    # Create ChromeOptions object
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Add required arguments one by one
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome options}    add_argument    --disable-gpu
    Call Method    ${chrome options}    add_argument    --remote-debugging-port=9222
    # Open browser with these options
    Open Browser    ${url}    chrome    options=${chrome options}

Postcondition
    Close Browser


*** Test Cases ***
Example Test
    Precondition    https://example.com
    Sleep    3s
    Postcondition
