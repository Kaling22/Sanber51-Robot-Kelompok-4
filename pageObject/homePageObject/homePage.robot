*** Settings ***
Resource        ../base/base.robot
Variables       home-locators.yaml

*** Keywords ***   
Click Sign In Button Home Page
    Click Element        ${sign-in-button}

Click Check In Button Home Page
    Wait Until Element Is Visible    ${check-in-button}
    Click Element                    ${check-in-button}

Click Sign Out Button Home Page
    Wait Until Element Is Visible    ${sign-out-button}
    Click Element                    ${sign-out-button}