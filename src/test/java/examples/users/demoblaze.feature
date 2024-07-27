Feature: APIS DEMOBLAZE

  Background:
    * url 'https://api.demoblaze.com'
  @SigInNew
  Scenario Outline: SigIn con usuario nuevo
    Given path 'signup'
    And request {"username": "<username>", "password": "<password>"}
    When method post
    Then status 200
    And match response contains '""'
    Examples:
      | username  |   password |
      | asdsada12312    |  asdd1234sdf   |

  