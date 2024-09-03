#  Robot Framework for Testing Indodax Android Application

Indodax is a technology-based company in the field of blockchain and crypto assets that trades Bitcoin, Ethereum, Ripple, and more than 160 other crypto assets from around the world with 24-hour market activity.

## What is Robot Framework?
Robot Framework ® is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). 
It has simple plain text syntax and it can be extended easily with generic and custom libraries.
Learn more about Robot Framework [here](https://github.com/robotframework/robotframework)

## Environment Requirements
- [Robot Framework 7.0.1](https://github.com/robotframework/robotframework/releases/tag/v7.0.1)
- [Python 3.11.9](https://www.python.org/downloads/release/python-3119/)
- [IDE PyCharm 2024.1.4 (Community Edition) Windows](https://download.jetbrains.com/python/pycharm-community-2024.2.1.exe?_gl=1*h66nvg*_gcl_au*ODU5MTY1MjA2LjE3MjUxNTc2OTk.*_ga*MTExMzg2MTM1My4xNzI1MTU3Njk2*_ga_9J976DJZ68*MTcyNTM1OTI2Mi4zLjAuMTcyNTM1OTI2Mi42MC4wLjA.)
- [Robot Framework Appium Library](https://github.com/serhatbolsu/robotframework-appiumlibrary)
- [Appium v2.11.3](https://github.com/appium/appium/releases)
- [Appium Inspector](https://github.com/appium/appium-inspector/releases/tag/v2024.8.2) 
- Openjdk 17.0.11 2024-04-16 LTS (get from `npm` or [here](https://jdk.java.net/archive/))
- [Node.js](https://nodejs.org/en)

## Usage

Adjust your `device setup` for connection to `appium server` by edit `/Resources/Helper/DeviceSetup.robot` and adjust it to your device
```python
*** Settings ***
Library     AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
#Change this variable value with yours
${ANDROID_PLATFORM_VERSION}   12 
${ANDROID_APP_PACKAGE}        id.co.bitcoin
${ANDROID_APP_ACTIVITY}       id.co.bitcoin.ui.main.SplashScreenActivity
#Change this variable value with yours
${ANDROID_DEVICE_NAME}        GIPF69DMZLTK7PFA
```

Create `AccountRes.robot` in folder `/Resources/AARes/`
```python
*** Variables ***
#AccountA
${ACCOUNT-EMAIL-1}       youremail@mail.com
${ACCOUNT-PASS-1}        yourpassword

#AccountB
${ACCOUNT-EMAIL-2}       youremail2@mail.com
${ACCOUNT-PASS-2}        yourpassword

#PINApp Variables
${PIN-1}        1
${PIN-2}        2
${PIN-3}        3
${PIN-4}        4
${PIN-5}        5
${PIN-6}        6
```



