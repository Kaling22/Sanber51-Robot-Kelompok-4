*** Settings ***
Library           AppiumLibrary

*** Variables ***
${APPIUM_SERVER}        http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     12.0
${DEVICE_NAME}          emulator-5554
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity


*** Keywords ***
Open Flight Application    
    Open Application        remote_url=${APPIUM_SERVER}    
    ...                     platform_name=${PLATFORM_NAME}    
    ...                     platform_version=${PLATFORM_VERSION}    
    ...                     device_name=${DEVICE_NAME}    
    ...                     app_package=${APP_PACKAGE}    
    ...                     app_activity=${APP_ACTIVITY}

Close Flight Application
    Close Application