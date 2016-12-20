*** Settings ***
Library           Selenium2Library
Library           DateTime
Resource          resource.txt

*** Test Cases ***
open web page
    [Setup]    Open Main Page
    Select English
    Select Oneway
    Set Origin
    Set Destination
    Set Current Date
    Find Flights
    Title Should Be    Select Flight | Finnair
    [Teardown]    Close Browser
