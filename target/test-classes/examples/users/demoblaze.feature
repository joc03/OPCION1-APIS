Feature: APIS DEMOBLAZE

  @Login
  Scenario: Login
    Given url 'https://restful-booker.herokuapp.com/auth'
    And request { "username": "admin", "password": "password123" }
    When method post
    Then status 200
    
