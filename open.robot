*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROME OPTIONS}    add_argument("--headless");add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--disable-gpu");add_argument("--remote-debugging-port=9222")
${CHROMEDRIVER PATH}    /usr/local/bin/chromedriver

*** Keywords ***
Precondition
    [Arguments]    ${url}
 ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service('/usr/local/bin/chromedriver')    sys, selenium.webdriver.chrome.service
    Open Browser    ${url}    chrome    options=${CHROME OPTIONS}    service=${service}

Postcondition
    Close Browser
