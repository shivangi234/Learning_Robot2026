*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Keywords ***
Open my browser
        [Arguments]   ${SiteUrl}      ${Browser}
        Open Browser    ${SiteUrl}      ${Browser}
        Maximize Browser Window
Click Register
        Click Link    ${link_text}

Enter FirstName
        [Arguments]     ${firstName}
        Input Text    ${enterFirstName}    ${firstName}

Enter LastName
        [Arguments]     ${lastName}
        Input Text    ${enterLastName}    ${lastName}

Enter Phone
        [Arguments]     ${phone}
        Input Text    ${enterPhoneNumber}    ${phone}
Enter Email
        [Arguments]     ${email}
        Input Text    ${enterEmail}    ${email}
Enter Address
        [Arguments]     ${address}
        Input Text    ${enterAddress}    ${address}
Enter City
        [Arguments]     ${city}
        Input Text    ${enterCity}    ${city}
Enter State
        [Arguments]     ${state}
        Input Text    ${enterState}    ${state}
Enter Postalcode
        [Arguments]     ${postalcode}
        Input Text    ${enterPostalCode}    ${postalcode}
Select Country
        [Arguments]     ${country}
        Select From List By Label    ${enterCountry}    ${country}

Enter UserName
        [Arguments]     ${username}
        Input Text    ${enterUserName}    ${username}
Enter Password
        [Arguments]     ${password}
        Input Text    ${enterPassword}    ${password}
Enter ConfirmPassword
        [Arguments]     ${confpwd}
        Input Text    ${enterConfirmPassword}    ${confpwd}
Click Submit
        Click Button    ${btnSubmit}
Verify Successful Registration
        Page Should Contain    Thank you for registering

close my browsers
        Close All Browsers
