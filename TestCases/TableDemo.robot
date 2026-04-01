*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TableTestCases
        Open Browser    https://testautomationpractice.blogspot.com/    chrome
        Maximize Browser Window
        
        Scroll Element Into View    xpath://table[@name="BookTable"]

#       How many element in that particular count
        ${rows} =      Get Element Count    xpath://table[@name="BookTable"]/tbody/tr
        ${col} =        Get Element Count    xpath://table[@name="BookTable"]/tbody/tr[1]/th

        Log To Console    ${rows}
        Log To Console    ${col}
        
        ${data} =   Get Text    xpath://table[@name="BookTable"]/tbody/tr[5]/td[1]
        Log To Console    ${data}
        
        Table Column Should Contain    xpath://table[@name="BookTable"]    2    Author
        Table Row Should Contain    xpath://table[@name="BookTable"]    4    Animesh
        
        Table Cell Should Contain    xpath://table[@name="BookTable"]    5    3    Selenium
        Table Header Should Contain    xpath://table[@name="BookTable"]    Author
