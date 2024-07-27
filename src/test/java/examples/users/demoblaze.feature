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

  @SigInRepeat
  Scenario Outline: SigIn con usuario repetido
    Given path 'signup'
    And request {"username": "<username>", "password": "<password>"}
    When method post
    Then status 200
    And match response == { "errorMessage": "This user already exist." }

    Examples:
      | username  |   password |
      | joc123456    |  lalala123456   |

  @LoginSucces
  Scenario Outline: Login con credenciales correctas
    Given path 'login'
    And request {"username": "<username>", "password": "<password>"}
    When method post
    Then status 200


    Examples:
      | username  |   password |
      | joc123456    |  lalala123456 |

  @LoginIncorrect
  Scenario Outline: Login con credenciales incorrectas
    Given path 'login'
    And request {"username": "<username>", "password": "<password>"}
    When method post
    Then status 200
    And match response == {"errorMessage":"Wrong password."}


    Examples:
      | username  |   password |
      | joc123    |  lalala123   |