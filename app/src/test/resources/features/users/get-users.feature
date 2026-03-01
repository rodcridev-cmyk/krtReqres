Feature: Obtener usuarios

Scenario: Obtener lista de usuarios
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method GET
    Then status 200
    And match response != []
    And match each response contains { id: '#number', email: '#string' }