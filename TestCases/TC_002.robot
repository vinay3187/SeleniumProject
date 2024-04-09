*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Url1}    https://www.thetestingworld.com/testings
${Url2}    https://www.google.com
${Browser}    Firefox

*** Test Cases ***
Robot First Test Case
    open browser    ${Url1}    ${Browser}
    maximize browser window
    title should be     Login & Sign Up Forms
    element should be visible    //label[text()='Register']
*** Keywords ***
