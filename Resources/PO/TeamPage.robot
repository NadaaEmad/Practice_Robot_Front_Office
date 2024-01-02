*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_PAGE_HEADER}    (//h2)[4]
*** Keywords ***
Verify "Team" page header
    wait until page contains element    ${TEAM_PAGE_HEADER}

Validate "Team" header content
    ${headerText}    get text    ${TEAM_PAGE_HEADER}
    should be equal as strings    ${headerText}    OUR AMAZING TEAM    ignore_case=true
