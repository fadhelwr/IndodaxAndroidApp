*** Settings ***
Library          OperatingSystem
Library    Process

*** Test Cases ***
Run [EX-001] Verify Home Page
    [Documentation]    This test suite runs multiple test files
    Run Process        robot    ../../TestSuites/AccountActivation/LoginPIN.robot
    Run Process       robot    ../../TestSuites/Exchange/VerifyHomePageLite.robot



