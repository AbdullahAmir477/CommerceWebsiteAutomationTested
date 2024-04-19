*** Settings ***
Library     SeleniumLibrary
Resource    dummy.resource

*** Test Cases ***
TC 1: Open the BSS Website
    Given I Open the BSS Website
    When I Click on the Contact Us Tab