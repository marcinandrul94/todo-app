*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${checkbox}                css=svg[viewBox='0 0 53 38']
${checkbox_path}           css=path[d='M1.5 22L16 36.5L51.5 1']
${task_title}              css=p[class*='todoItem_todoText']
${completed_task_title}    css=p[class*='completed']
${incomplete_task_title}   css=p[class*='false']


*** Keywords ***
Check The Task Checkbox
    [Arguments]    ${checkbox_value}
    Click Element    ${checkbox}
    Check If Checbox Is Checked    ${checkbox_value}

Check If Checbox Is Checked
    [Documentation]    0 for unchecked checbox. 1 for checked checkbox.
    [Arguments]    ${checkbox_value}
    ${opacity}=    Get Element Attribute    ${checkbox_path}    opacity
    Should Be Equal    ${opacity}    ${checkbox_value}

