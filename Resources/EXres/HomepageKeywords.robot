*** Settings ***
Library     AppiumLibrary
Resource    ../AAres/LoginKeywords.robot
Resource    ExchangeVariables.robot

*** Keywords ***
Verify <AppBar> LAYOUT LITE
    Element Should Be Visible    ${BT-SWITCH-MODE-LITE}
    Capture Page Screenshot
    Sleep    1s
    Element Should Be Visible    ${BT-SEARCH-HOME-LITE}
    Sleep    1s
    Element Should Be Visible    ${BT-NOTIF-ICON-LITE}
    Sleep    1s
    Element Should Be Visible    ${BT-PROFILE-ICON-LITE}
    Sleep    1s
    Element Should Be Visible    ${LABEL-EST-ASSET-LITE}
    Sleep    1s
    Element Should Be Visible    ${TOOLTIP-EST-ASSET-LITE}
    Sleep    1s
    Element Should Be Visible    ${EST-ASSET-NOMINAL-ICON-EYE-LITE}
    Sleep    1s
    
Verify Bottom Sheet Estimated Asset Value
    Click Element                ${TOOLTIP-EST-ASSET-LITE}
    Element Should Be Visible    ${EST-ASSET-BOTTOMSHEET}
    Capture Page Screenshot
    Click Element                id.co.bitcoin:id/ivClose

Verify Hide and Unhide Estimated Asset
    Click Element    ${EST-ASSET-NOMINAL-ICON-EYE-LITE}



