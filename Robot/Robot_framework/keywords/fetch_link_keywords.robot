*** Keywords ***
Fetch_All_Link
    ${all_links}    Get WebElements    //a
    Log    ${all_links}