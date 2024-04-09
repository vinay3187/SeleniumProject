*** Settings ***
Library    SeleniumLibrary
Library    ../External_Keywords/userkeywords.py
Library    ../Test_Data/readdata.py
*** Variables ***

*** Keywords ***
Start Browser and Maximise
    [Documentation]    These are keywords
    [Arguments]    ${Url}    ${Browser}
    open browser    ${Url}    ${Browser}
    maximize browser window

Close Browser Window
    ${title}=    get title
    [Return]    ${title}
    Close Browser

Close Browser
    ${title}    get title
    [Return]    ${title}
Create Folder at runtime
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_subfolder    ${subfoldername}
    log    "Tasks Completed"

Concatenate USername and Password
    [Arguments]    ${username}    ${password}
    ${resultval}=    concatenate_two_value    ${username}    ${password}
    log    ${resultval}

Read Excel data from cell
    [Arguments]    ${Sheet}    ${rows}    ${cols}
    ${data}=    fetch_cell_data    ${Sheet}    ${rows}    ${cols}
    [Return]    ${data}

Get no of rows
    [Arguments]    ${Sheet}
    ${rows}=    fetch no of rows    ${Sheet}
    [Return]    ${rows}