*** Settings ***
Resource        ../base/base.robot
Variables        login-locators.yaml

*** Keywords ***
Input Username Login Page
    [Arguments]       ${username}
    Wait Until Element Is Visible          ${username-login}
    Input Text        ${username-login}    ${username}

Input Password Login Page
    [Arguments]       ${password}
    Wait Until Element Is Visible          ${password-login}
    Input Text        ${password-login}    ${password}

Click Sign In Button Login Page
    Wait Until Element Is Visible          ${sign-in-button-login}
    Click Element    ${sign-in-button-login}