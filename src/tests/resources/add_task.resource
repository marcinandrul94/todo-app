*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${add_task_button_main_page}     xpath=//button[text()='Add Task']
${add_task_button_modal_window}  xpath=//button[@type='submit']
${title_text_field}              css=[id="title"]
${status_text_field}             css=[id="type"]
${new_task_heading}              Add TODO

*** Keywords ***
Add Task
    [Arguments]    ${task_status}    ${title_input}
    Open Add Task Modal Window
    Check Task Status    ${task_status}
    Add Title To The Task    ${title_input}

Open Add Task Modal Window
    Click Button    ${add_task_button_main_page}
    Wait Until Page Contains    ${new_task_heading} 

Check Task Status
    [Arguments]    ${task_status}
    ${selected_text}=    Get Selected List Label    ${status_text_field}
    Should Be Equal    ${selected_text}    ${task_status}

Add Title To The Task
    [Arguments]    ${title_input}
    Input Text    ${title_text_field}    ${title_input}
    Click Button    ${add_task_button_modal_window}
    Wait Until Page Does Not Contain    ${new_task_heading} 

