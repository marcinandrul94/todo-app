*** Settings ***
Library    SeleniumLibrary
Resource   ./add_task.resource

*** Variables ***
${edit_button_first_row}            xpath=(//div[@class='todoItem_icon__+DYyU'])[2]
${edit_task_heading}                Update TODO
${update_task_button_main_page}     xpath=//button[text()='Update Task']

*** Keywords ***
Open First Task
    Click Element    ${edit_button_first_row}
    Wait Until Page Contains    ${edit_task_heading}

Edit Task Title
    ${current_title}    Get Element Attribute    ${title_text_field}    value
    Set Test Variable    ${edited_text}    ${current_title}_edited
    Input Text    ${title_text_field}    ${edited_text}
    Click Button    ${update_task_button_main_page}

