*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library    Process
Library    BuiltIn
Library    SeleniumLibrary

*** Keywords ***
Precondition
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    # Removed --remote-debugging-port because it causes errors; add only if you really need it.
    Create WebDriver    Chrome    options=${options}
    Go To    ${url}

Postcondition
    Close Browser
