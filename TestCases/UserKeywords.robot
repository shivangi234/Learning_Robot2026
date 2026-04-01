*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}      chrome


*** Test Cases ***
TC1
    ${PageTitle} =  launchBrowser   ${url}      ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}
    Wait Until Element Is Visible    name:username      5s
    Input Text    name:username    Admin
    Input Text    name:password    admin123









#       Declared inside the file ,we have to declare this from outside for reuse
#*** Keywords ***
#launchBrowser
##        user defined keywords with arguments   ${appurl}   ${appbrowser} in launchBrowser
##         whatever you passed on this launchBrowser you have to pass the parameter value on above TestCases
#
#         [Arguments]    ${appurl}   ${appbrowser}
#         Open Browser   ${appurl}   ${appbrowser}
#         Maximize Browser Window
#         ${title} =   Get Title
#         #        user defined keywords with arguments   ${appurl}   ${appbrowser} in launchBrowser
##        with return
#         RETURN     ${title}