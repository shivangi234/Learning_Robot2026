*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
        [Arguments]     ${SiteUrl}      ${Browser}
        Open Browser    ${SiteUrl}      ${Browser}
        Maximize Browser Window

Enter UserName
        [Arguments]     ${username}
        Input Text    ${txt_loginUserName}    ${username}
Enter password
        [Arguments]     ${password}
        Input Text    ${txt_loginPassword}    ${password}
        
Click Signin
        Click Element    ${btnLogin}

Verify successful login
        Title Should Be    Login: Mercury Tours

Close my browsers
        Close All Browsers