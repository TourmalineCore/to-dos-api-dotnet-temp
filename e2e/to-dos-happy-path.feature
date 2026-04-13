Feature: To Dos
  Background:
    * header Content-Type = 'application/json'

    * def jsUtils = read('./js-utils.js')
    * def apiRootUrl = jsUtils().getEnvVariable('API_ROOT_URL')

  Scenario: Happy Path
    # Step 1: Create a new To Do
    * def randomToDoName = '[API-E2E]-Test-to-do-' + Math.random()
    
    Given url apiRootUrl
    Given path 'to-dos'
    And request
    """
    {
      "name": "#(randomToDoName)"
    }
    """
    When method POST
    Then status 200

    * def newToDoId = response.newToDoId

    # Step 2: Verify that the new ToDo is in the list with the received id and generated name
    Given url apiRootUrl
    Given path 'to-dos'
    When method GET
    And match response.toDos contains
    """
    {
      "id": "#(newToDoId)",
      "name": "#(randomToDoName)",
    }
    """

    # Cleanup: Delete the To Do (hard delete)
    Given path 'to-dos'
    And params { toDoId: "#(newToDoId)" }
    When method DELETE
    Then status 200
    And match response == { isDeleted: true }
