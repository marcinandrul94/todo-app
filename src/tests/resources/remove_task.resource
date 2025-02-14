*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${no_todos_text}              xpath=//p[text()='No Todos']
${remove_button_first_row}    xpath=(//div[@class='todoItem_icon__+DYyU'])[1]

*** Keywords ***
Remove Task
    Click Element    ${remove_button_first_row}
    Wait Until Page Does Not Contain Element    ${remove_button_first_row}