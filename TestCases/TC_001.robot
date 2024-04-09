*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources.robot
Library    ../../External-Keywords/Locators.py



*** Variables ***
${Url}    https://www.thetestingworld.com/testings/
${Browser}    Firefox

*** Test Cases ***
Robot Fetch Data
    open browser    ${Url}    ${Browser}
    maximize browser window

    ${rows}=    fetch no of rows    Sheet1
    FOR    ${i}    IN RANGE    1    ${rows}+1
        ${username}=    Read Excel data from cell    Sheet1    ${i}    1
        ${password}=    Read Excel data from cell    Sheet1    ${i}    2
        click element    //label[text()='Login']
        input text    //input[@name='_txtUserName']    ${username}
        input text    //input[@name='_txtPassword']    ${password}
        click element    //input[@value='Login']
        sleep    5 seconds
    END

*** Keywords ***
Read Element Locator
    [Arguments]    JsonPath
    $(result} = read_locator_from_json    JsonPath
    [Return]    $result}