*** Settings ***
Library     AppiumLibrary
Resource    AccountRes.robot
Resource    LoginLocator.robot

*** Keywords ***
Login Application
    Click Text          ${LOGIN-BUTTON-TEXT}
    Sleep    1s
Input Email User
    Input Text          ${LOGIN-EMAIL-FIELD}       ${ACCOUNT-EMAIL-1}
    Sleep    1s
Input Password User
    Input Password      ${LOGIN-PASSWORD-FIELD}    ${ACCOUNT-PASS-1}
    Sleep    1s
    Click Element       ${LOGIN-BUTTON}
#Change This
Input PIN
    Click Text    ${PIN-5}
    Sleep    1s
    Click Text    ${PIN-4}
    Sleep    1s
    Click Text    ${PIN-3}
    Sleep    1s
    Click Text    ${PIN-2}
    Sleep    1s
    Click Text    ${PIN-4}
    Sleep    1s
    Click Text    ${PIN-4}
    Sleep    3s

#OTP
Verify OTP
    Click Element    ${LOGIN-BUTTON-OTP}
    Sleep    2s
    Click Element    ${LOGIN-OTP-FIELD}
    Sleep    10s
    Click Element    ${LOGIN-BUTTON-VERIFY}

#GAUTH
Verify GAuth
    Click Element    ${LOGIN-OTP-FIELD}
    Sleep    10s
    Click Element    ${LOGIN-BUTTON-VERIFY}

Verify Bottom Sheet Biometric: Skip
    ${biometric_visible} =
    ...     Run Keyword And Return Status
    ...     Wait Until Element Is Visible    ${BT-SKIP-BIOMETRIC}    3s
        Run Keyword If           ${biometric_visible}
        ...     Click Element    ${BT-SKIP-BIOMETRIC}

Verify Bottom Sheet Biometric: Enable
    ${biometric_visible} =
    ...     Run Keyword And Return Status
    ...     Wait Until Element Is Visible    ${BT-ENABLE-BIOMETRIC}    3s
        Run Keyword If           ${biometric_visible}
        ...     Click Element    ${BT-ENABLE-BIOMETRIC}

Verify Pop up Trading Mode
    ${TradeMode_popup} =
    ...     Run Keyword And Return Status
    ...     Wait Until Element Is Visible    ${POPUP-TRADING-MODE-LEARN}   3s
        Run Keyword If           ${TradeMode_popup}
        ...     Click Element    ${POPUP-TRADING-MODE-LEARN}

Verify App Tour: Home Page
    ${home_apptour} =
    ...     Run Keyword And Return Status
    ...     Wait Until Element Is Visible    ${APPTOUR-CHECK}   3s
        Run Keyword If           ${home_apptour}
        ...     Click Element    ${APPTOUR-CHECK}

       





