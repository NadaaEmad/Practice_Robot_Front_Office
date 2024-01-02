*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${TOP_NAV_TEAM_LINK}    css=a[href="#team"]
*** Keywords ***
Click on team link
    click element    ${TOP_NAV_TEAM_LINK}
    sleep    3s