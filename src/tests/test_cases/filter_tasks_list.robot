*** Settings ***
Resource         ../resources/filter_tasks_list.resource
Resource         ../resources/common.resource
Resource         ../resources/add_task.resource
Resource         ../resources/mark_task_as_completed.resource
Resource         ../resources/variables.resource
Test Teardown    Close All Browsers

*** Test Cases ***
Verify If Task List Can Be Filtered
    [Tags]    E2E    FilterTasks
    [Setup]    Run Keywords  Open Todo App    ${website_link}    
    ...    AND  Repeat Keyword    2x    Add Task    
    ...    ${task_status}    ${title_input}
    
    Check The Task Checkbox    1
    Select Dropdown Option    Completed
    Check Current Filter    Completed
    Page Should Contain Element    ${completed_task_title}
    Select Dropdown Option    Incomplete
    Check Current Filter    Incomplete
    Page Should Contain Element    ${incomplete_task_title}
    Select Dropdown Option    All
    Check Current Filter    All
    Page Should Contain Element    ${completed_task_title}
    Page Should Contain Element    ${incomplete_task_title}
