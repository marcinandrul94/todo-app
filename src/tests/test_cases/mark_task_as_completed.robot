*** Settings ***
Resource         ../resources/common.resource
Resource         ../resources/add_task.resource
Resource         ../resources/variables.resource
Resource         ../resources/mark_task_as_completed.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Verify If Task Can Be Marked As Completed
    [Tags]    E2E    MarkAsCompleted
    [Setup]    Run Keywords  Open Todo App    ${website_link}    
    ...    AND  Add Task    ${task_status}    ${title_input}
    
    Check The Task Checkbox    1
    Page Should Contain Element    ${completed_task_title}
    Check The Task Checkbox    0
    Page Should Contain Element    ${incomplete_task_title}