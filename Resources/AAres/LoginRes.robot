*** Settings ***
Library     AppiumLibrary
Resource    AccountRes.robot

*** Variables ***
${LOGIN-BUTTON-TEXT}        Login
${LOGIN-EMAIL-FIELD}        id.co.bitcoin:id/actEmail
${LOGIN-PASSWORD-FIELD}     id.co.bitcoin:id/etPassWithLabel
${LOGIN-BUTTON}             id.co.bitcoin.auth:id/btLogin
${LOGIN-BUTTON-OTP}         id.co.bitcoin:id/tbtRight
${LOGIN-OTP-FIELD}          id.co.bitcoin:id/etValue
${LOGIN-BUTTON-VERIFY}      id.co.bitcoin:id/tbtNext

#BIOMETRIC
${BT-SKIP-BIOMETRIC}        //android.widget.Button[@text="Skip"]
${BT-ENABLE-BIOMETRIC}      //android.widget.Button[@text="Enable"]
${BIOMETRIC-ICON}           id.co.bitcoin:id/ivIcon

#POPUP TRADING MODE ENG
${POPUP-TRADING-MODE-HEADER}        New Trading Mode in Indodax!
${POPUP-TRADING-MODE-THUMBNAIL}     id.co.bitcoin.home_lite:id/lotContent
${POPUP-TRADING-MODE-LITE}          id.co.bitcoin.home_lite:id/lotContent
${POPUP-TRADING-MODE-PRO}           id.co.bitcoin.home_lite:id/tvTitlePro
${POPUP-TRADING-MODE-LEARN}         id.co.bitcoin.home_lite:id/btnLearnMore
#APP TOUR HOME PAGE
${APPTOUR-HEADER}                   id.co.bitcoin:id/tvTitleShowcase
${APPTOUR-CHECK}                    id.co.bitcoin:id/btnNext

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

       





