Feature: Obtener usuarios

  Background:
    * url baseUrl

  Scenario: Obtener lista de usuarios
    Given path 'users'
    And param page = 2
    When method GET
    Then status 200
    And match response.data[*].id contains [7, 8, 9]