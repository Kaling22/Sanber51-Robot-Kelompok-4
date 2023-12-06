*** Settings ***
Resource        ../base/base.robot
Variables       search-locators.yaml

*** Keywords ***   
Click Search Button On Home Page
    Wait Until Element Is Visible     ${search-button-home-page}
    Click Element                     ${search-button-home-page}
    
Input Flight Number
    Wait Until Element Is Visible    ${input-flight-number}
    [Arguments]                      ${flight-number}
    Input Text                       ${input-flight-number}    ${flight-number}

Click Search Button
    Click Element    ${search-button}