@smokeTest
Feature: Authentication Smoke test

  Scenario: Generate Valid token with username and password
    Given url "https://tek-insurance-api.azurewebsites.net/"
    And path "/api/token"
    And request {"username": "supervisor","password": "tek_supervisor"}
    When method post
    Then status 200
    And print response

  Scenario: Generate token with invalid username
   Given url "https://tek-insurance-api.azurewebsites.net/"
    And path "/api/token"
    And request {"username": "some-name","password": "tek_supervisor"}
    When method post
    Then status 404
    And print response
