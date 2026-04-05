*** Settings ***
Library     SeleniumLibrary
Resource        ../Resources/Loginkeywords.robot


*** Variables ***
${Browser}      chrome
${SiteUrl}      https://demo.guru99.com/test/newtours/index.php
${user}         tutorial
${pwd}          tutorial

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter password   ${pwd}
    Click Signin
    Sleep    3s
    Verify successful login
    Close my browsers

