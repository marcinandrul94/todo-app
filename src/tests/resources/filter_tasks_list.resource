*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${filter_dropdown}    css=[id='status']

*** Keywords ***
Check Current Filter
    [Arguments]    ${filter_name}
    ${selected_text}=    Get Selected List Label    ${filter_dropdown}
    Should Be Equal    ${selected_text}    ${filter_name}

Select Dropdown Option
    [Arguments]    ${filter_name}
    Select From List By Label    ${filter_dropdown}    ${filter_name}