*** settings ***
Library    SeleniumLibrary

*** keywords ***
Dropdown
    Select From List By Value    xpath://select[@id="fruits"]    2
     Sleep  2s
     Select From List By Value    xpath://select[@id="lang"]     js
     Select From List By Value    xpath://select[@id="country"]    Peru
     Sleep    2s