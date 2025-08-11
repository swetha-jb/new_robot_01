*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROME OPTIONS}    add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--disable-gpu");add_argument("--remote-debugging-port=9222")
${CHROMEDRIVER_PATH}    /usr/local/bin/chromedriver

*** Keywords ***
Precondition
    [Arguments]     ${url}
    Open Browser    ${url}    chrome    options=${CHROME OPTIONS}    executable_path=${CHROMEDRIVER_PATH}

Postcondition
    Close Browser
