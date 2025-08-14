*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${CHROMIUM OPTIONS}    add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--disable-gpu");add_argument("--remote-debugging-port=9222")
${CHROMIUM BINARY}     /usr/bin/chromium
${CHROMEDRIVER PATH}   /usr/bin/chromedriver

*** Keywords ***
Precondition
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    : FOR    ${arg}    IN    @{CHROMIUM OPTIONS.split(";")}
    \    Call Method    ${options}    add_argument    ${arg}
    Set Library Search Path    SeleniumLibrary    ${CHROMEDRIVER PATH}
    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service('${CHROMEDRIVER PATH}')    sys, selenium.webdriver.chrome.service
    Open Browser    ${url}    chrome    options=${options}    service=${service}    executable_path=${CHROMIUM BINARY}

Postcondition
    Close Browser
