*** settings ***
Library    SeleniumLibrary

*** keywords ***
Checkbox
    Click Element    xpath://*[@id="app"]/div/div/div/div[1]/div/div/div[1]/span/div/div[2]
    sleep    2s
    Click Element    xpath://span[text()="Check Box"]
    Sleep   2s
    Select Checkbox    xpath://span[text()="Home"]
    Sleep   2s
    Unselect Checkbox    xpath://span[text()="Home"]