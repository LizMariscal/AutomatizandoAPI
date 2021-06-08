Feature: Users

  Scenario: I want to create a new users

    Given I have authentication to todo.ly
    When I send POST request 'api/user.jason' whit json and BASIC authentication
    """
    {
      "Email": "mariscal12@gmail.com",
      "FullName":"Lizeth Mariscal",
      "Password":"Lizeth"
     }
    """
    Then I expect the response code 200
    And I expected the response body is equal
    """
    {
        "Id": EXCLUDE,
        "Email": "mariscal12@gmail.com",
        "Password": null,
        "FullName": "Lizeth Mariscal",
        "TimeZone": 0,
        "IsProUser": false,
        "DefaultProjectId": EXCLUDE,
        "AddItemMoreExpanded": false,
        "EditDueDateMoreExpanded": false,
        "ListSortType": 0,
        "FirstDayOfWeek": 0,
        "NewTaskDueDate": EXCLUDE,
        "TimeZoneId": "EXCLUDE"
    }
    """






