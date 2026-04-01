*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
CaptureScreenshot TestCases
        Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
        Maximize Browser Window



        Wait Until Element Is Visible    name:username    5s
        Input Text    name:username    Admin
        Input Text    name:password    admin123

        Sleep    5s
        Capture Page Screenshot     C:/Users/shivangi.sahu/PycharmProjects/PythonProject/Automation_Robot/TestCases/Assets/FullLoginPage.png

        Sleep    2s
        Capture Element Screenshot    xpath://img[@alt='company-branding']      C:/Users/shivangi.sahu/PycharmProjects/PythonProject/Automation_Robot/TestCases/Assets/logo.png

        Click Button    xpath://button[@type='submit']




        Close Browser
*** Keywords ***

