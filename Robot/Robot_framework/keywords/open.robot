*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMIUM OPTIONS}    add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--disable-gpu");add_argument("--remote-debugging-port=9222")
${CHROMEDRIVER PATH}    /usr/local/bin/chromedriver   # Chromium uses the same chromedriver
${CHROMIUM BINARY}     /usr/bin/chromium

**** Keywords ***
Precondition
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    FOR    ${arg}    IN    @{CHROMIUM OPTIONS.split(";")}
        Call Method    ${options}    add_argument    ${arg}
    END
    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service('${CHROMEDRIVER PATH}')    sys, selenium.webdriver.chrome.service
    Open Browser    ${url}    chrome    options=${options}    service=${service}    executable_path=${CHROMIUM BINARY}



Postcondition
    Close Browser