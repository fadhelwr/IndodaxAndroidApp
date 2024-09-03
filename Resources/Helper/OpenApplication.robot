*** Settings ***
Library     AppiumLibrary
Resource    DeviceSetup.robot

*** Keywords ***
Open Indodax Application
    Open Application    http://192.168.18.43:4723
    ...                 platformName=${ANDROID_PLATFORM_NAME}
    ...                 platformVersion=${ANDROID_PLATFORM_VERSION}
    ...                 appPackage=${ANDROID_APP_PACKAGE}
    ...                 deviceName=${ANDROID_DEVICE_NAME}
    ...                 appActivity=${ANDROID_APP_ACTIVITY}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 noReset=true
    Sleep    2S