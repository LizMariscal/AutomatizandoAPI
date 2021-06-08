Feature: Project
  Scenario: I want to create a project
    Given I have authentication to todo.ly
    When I send POST request 'api/project.jason' whit json and BASIC authentication
    """
    {
       "Content":"Training",
       "Icon": 7
    }
    """
    Then I expect the response code 200
    And I expected the response body is equal
    """
        "Id": "EXCLUDE",
        "Content": "Training",
        "ItemsCount": 0,
        "Icon": 7,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    """
    When I send GET request 'api/project.jason' whit json and BASIC authentication
    """
    """
    Then I expect the response code 200
    And I get the property value 'Id' and save on ID_PROJECT
    When I send PUT request 'api/project/ID_PROJECT.jason' whit json and BASIC authentication
    """
    {
       "Content":"Start_Training",
       "Icon": 8
    }
    """
    Then I expect the response code 200

    And I expected the response body is equal
    """
    "Id": ID_PROJECT,
        "Content": "Start_Training",
        "ItemsCount": 0,
        "Icon": 8,
        "ItemType": 2,
        "ParentId": null,
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    """


