Feature: APIS DEMOBLAZE

  @SigIn
  Scenario: SigIn
    Given url 'https://api.demoblaze.com/signup'
    And request {"username": "operador123", "password": "clave456"}
    When method post
    Then status 200
    