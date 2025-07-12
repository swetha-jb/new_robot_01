*** settings ***
Library    SeleniumLibrary

*** keywords ***
Mouese_Over_to_amazon
    Mouse Over    xpath://span[text()="Returns"]
    Double Click Element     xpath://span[text()="Returns"]
    Sleep   2s