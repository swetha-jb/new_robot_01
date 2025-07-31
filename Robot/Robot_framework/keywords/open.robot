*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CHROME OPTIONS}    --headless --no-sandbox --disable-dev-shm-usage --disable-gpu --remote-debugging-port=9222

*** Keywords ***
Precondition
    [Arguments]     ${url}
    Open Browser     ${url}   chrome    options=${CHROME OPTIONS}

Postcondition
    Close Browser

