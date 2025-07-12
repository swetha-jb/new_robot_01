*** settings ***
Library    SeleniumLibrary

*** keywords ***
Radio_Button_click
    Click Element    xpath://*[@id="app"]/div/div/div/div[1]/div/div/div[1]/span/div/div[2]
    Click Element    xpath://span[text()="Radio Button"]
    Click Element    xpath://label[@for="yesRadio"]
    Sleep   2s

