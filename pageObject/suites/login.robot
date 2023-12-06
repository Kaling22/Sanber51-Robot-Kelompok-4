*** Settings ***
Resource        ../homePageObject/homePage.robot
Resource        ../loginPageObect/loginPage.robot
Resource        ../searchPageObject/searchPage.robot
Resource        ../bookPageObject/bookPage.robot
Resource        ../signoutPageObject/signoutPage.robot

*** Variables ***
${VALID-USERNAME}         support@ngendigital.com
${VALID-PASSWORD}         abc123
${INVALID-USERNAME}       invalid
${INVALID-PASSWORD}       invalid
${FLIGHT-NUMBER}          DA935
${INVALID-FLIGHT-NUMBER}  invalid

*** Test Cases ***
Login Valid Credential
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${VALID-USERNAME}
    Input Password Login Page        ${VALID-PASSWORD}
    Click Sign In Button Login Page
    Close Flight Application

Login Invalid Credential
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${INVALID-USERNAME}
    Input Password Login Page        ${INVALID-PASSWORD}
    Click Sign In Button Login Page
    Close Flight Application

Search Valid Credential
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${VALID-USERNAME}
    Input Password Login Page        ${VALID-PASSWORD}
    Click Sign In Button Login Page
    Click Search Button On Home Page
    Input Flight Number              ${FLIGHT-NUMBER}
    Click Search Button
    Close Flight Application

Search Invalid Credential
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${VALID-USERNAME}
    Input Password Login Page        ${VALID-PASSWORD}
    Click Sign In Button Login Page
    Click Search Button On Home Page
    Input Flight Number              ${INVALID-FLIGHT-NUMBER}
    Click Search Button
    Close Flight Application

Book Successfully
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${VALID-USERNAME}
    Input Password Login Page        ${VALID-PASSWORD}
    Click Sign In Button Login Page
    Click Book Button Home Page
    Click Radio Button From City
    Click From City
    Click Radio Button To City
    Click To City
    Click Radio Button Class
    Click First Class
    Click Start Date
    Click Date Start
    Click Button Ok
    Click End Date
    Click Date End
    Click Button Ok End Date
    Click Flight
    Click Button Book
    Click Button Confirm
    Close Flight Application

Check in Flight
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${VALID-USERNAME}
    Input Password Login Page        ${VALID-PASSWORD}
    Click Sign In Button Login Page
    Click Check In Button Home Page
    Close Flight Application

Sign Out
    Open Flight Application
    Click Sign In Button Home Page
    Input Username Login Page        ${VALID-USERNAME}
    Input Password Login Page        ${VALID-PASSWORD}
    Click Sign In Button Login Page
    Click Sign Out Button Home Page
    Close Flight Application