*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROMIUM OPTIONS}    add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");
add_argument("--disable-gpu");add_argument("--remote-debugging-port=9222")
${CHROMEDRIVER PATH}    /usr/local/bin/chromedriver   # Chromium uses the same chromedriver

*** Keywords ***
Precondition
    [Arguments]    ${urlw}
    Open Browser    ${url}    chromium    options=${CHROMIUM OPTIONS}    service=${service}

Postcondition
    Close Browser
