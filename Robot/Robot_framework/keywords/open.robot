*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMIUM BINARY}     /usr/bin/chromium
${CHROMEDRIVER PATH}   /usr/bin/chromedriver
${CHROMIUM OPTIONS}    --headless;--no-sandbox;--disable-dev-shm-usage;--disable-gpu;--remote-debugging-port=9222

*** Keywords ***
Precondition
    [Arguments]    ${url}
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    selenium.webdriver
    Call Method    ${options}    binary_location    ${CHROMIUM BINARY}
    FOR    ${arg}    IN    @{CHROMIUM OPTIONS.split(";")}
        Call Method    ${options}    add_argument    ${arg}
    END
    ${service}=    Evaluate    selenium.webdriver.chrome.service.Service('${CHROMEDRIVER PATH}')    selenium.webdriver.chrome.service
    Open Browser    ${url}    chrome    options=${options}    service=${service}

Postcondition
    Close Browser
