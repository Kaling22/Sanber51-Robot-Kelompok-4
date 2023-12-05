*** Settings ***
Library           AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    12.0

*** Keywords ***
Open Flight Application
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=Android Emulator    appPackage=com.example.android.apis    appActivity=com.example.android.apis.ApiDemos