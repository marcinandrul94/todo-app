*** Settings ***
Resource         ../resources/common.resource
Resource         ../resources/add_task.resource
Resource         ../resources/edit_task.resource
Resource         ../resources/variables.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Verify If Task Can Be Edited
    [Tags]    E2E    EditTask
    [Setup]    Run Keywords  Open Todo App    ${website_link}    
    ...    AND  Add Task    ${task_status}    ${title_input}
    
    Open First Task
    Edit Task Title
    Page Should Contain    ${edited_text}
    Page Should Contain    ${task_edited_message}