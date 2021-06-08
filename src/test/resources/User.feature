Feature: Users

  Scenario: I want to create a new users

    Given I have authentication to todo.ly
    When I send POST request 'api/user.jason' whit json and BASIC authentication
    """
    {
      "Email": "mariscal123@gmail.com",
      "FullName":"Lizeth Mariscal",
      "Password":"Lizeth"
     }
    """
    Then I expect the response code 200
    And I expected the response body is equal
    """
    {
        "Id": EXCLUDE,
        "Email": "mariscal123@gmail.com",
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
    And I get the property value 'Id' and save on ID_USER
    And I get the property value 'FullName' and save on UserName

    When I send PUT request 'api/user/ID_USER.jason' whit json and BASIC authentication

    """
        "FullName": "Liz Mariscal"

    """
    Then I expect the response code 200


    When I send GET request 'api/user.jason' whit json and BASIC authentication

    """

    """
    Then I expect the response code 200








