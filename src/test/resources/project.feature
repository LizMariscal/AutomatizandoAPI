Feature: Project
  Scenario: I want to create a project
    Given I hav authentication todo.ly
    When I send POST request 'api/projects.json' with json and BASIC authentication
    """
    {
       "Content":"TESTING",
       "Icon": 5
    }
    """

    # verificar el response

    Then I expected the response code 200
