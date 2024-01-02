*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANDING_PAGE_HEADER}     Welcome To Our Studio!
*** Keywords ***
Navigate to
    go to    ${URL}
    maximize browser window

Verify Page Loaded
    wait until page contains    ${LANDING_PAGE_HEADER}

