*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://demo.guru99.com/test/newtours/

*** Test Cases ***
Registration TestCaases
        Open my browser     ${SiteUrl}      ${Browser}
        Click Register
        Enter FirstName     Shivangi
        Enter LastName      Sahu
        Enter Phone         7008944853
        Enter Email         shivangi@gmail.com
        Enter Address       Aundh,Pune
        Enter City          Pune
        Enter State         Maharashtra
        Enter Postalcode    411067
        Select Country      INDIA
        Enter UserName      shivangi23
        Enter Password      shivangi23
        Enter ConfirmPassword   shivangi23
        Click Submit
        Verify Successful Registration
        close my browsers

