*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    String

*** Variables ***
${page_title}    TODO List

*** Keywords ***
Open Todo App
    [Arguments]    ${website_link}
    Open Browser    ${website_link}
    Wait Until Page Contains    ${page_title}
    Current Date Converted

Current Date Converted
    ${current_date}    Get Current Date    exclude_millis=True
    ${converted_date}    Convert Date    ${current_date}    result_format=%I:%M %p, %m/%d/%Y
    ${date_now}    Replace String    ${converted_date}    0    ${EMPTY}    count=1
    Set Test Variable    ${date_now}    ${date_now}
