*** Settings ***
Resource        ../base/base.robot
Variables       book-locators.yaml

*** Keywords ***
Click Book Button Home Page
    Wait Until Element Is Visible          ${book-button}
    Click Element    ${book-button}

Click Radio Button From City
    Wait Until Element Is Visible          ${from-city-button}
    Click Element    ${from-city-button}

Click From City
    Wait Until Element Is Visible          ${toronto}
    Click Element    ${toronto}

Click Radio Button To City
    Wait Until Element Is Visible          ${to-city-button}
    Click Element    ${to-city-button}

Click To City
    Wait Until Element Is Visible          ${london}
    Click Element    ${london}

Click Radio Button Class
    Wait Until Element Is Visible          ${class-button}
    Click Element    ${class-button}

Click First Class
    Wait Until Element Is Visible          ${first-class}
    Click Element    ${first-class}

Click Start Date
    Wait Until Element Is Visible          ${start-date}
    Click Element    ${start-date}

Click Date Start
    Wait Until Element Is Visible          ${august-01}
    Click Element    ${august-01}

Click Button Ok
    Wait Until Element Is Visible          ${ok-button-start-date}
    Click Element    ${ok-button-start-date}

Click End Date
    Wait Until Element Is Visible          ${end-date}
    Click Element    ${end-date}

Click Date End
    Wait Until Element Is Visible          ${august-03}
    Click Element    ${august-03}

Click Button Ok End Date
    Wait Until Element Is Visible          ${ok-button-end-date}
    Click Element    ${ok-button-end-date}

Click Flight
    Wait Until Element Is Visible          ${flight}
    Click Element    ${flight}

Click Button Book
    Wait Until Element Is Visible          ${book-button-page}
    Click Element    ${book-button-page}

Click Button Confirm
    Wait Until Element Is Visible          ${confirm-button}
    Click Element    ${confirm-button}
    