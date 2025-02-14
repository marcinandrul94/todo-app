*** Settings ***
Resource         ../resources/common.resource
Resource         ../resources/add_task.resource
Resource         ../resources/remove_task.resource
Resource         ../resources/variables.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Verify If Tasks Can Be Removed From Tasks List
    [Tags]    E2E    RemoveTask
    [Setup]    Run Keywords  Open Todo App    ${website_link}    
    ...    AND  Add Task    ${task_status}    ${title_input}
  
    Remove Task
    Page Should Contain Element    ${no_todos_text}
    Page Should Contain            ${task_removed_message}

