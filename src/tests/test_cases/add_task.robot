*** Settings ***
Resource         ../resources/common.resource
Resource         ../resources/add_task.resource
Resource         ../resources/variables.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Verify If Task Can Be Added To The Tasks List
    [Tags]    E2E    AddTask
    [Setup]    Open Todo App          ${website_link}
    Add Task               ${task_status}    ${title_input}
    Page Should Contain    ${title_input}
    Page Should Contain    ${date_now}
    Page Should Contain    ${task_added_message}