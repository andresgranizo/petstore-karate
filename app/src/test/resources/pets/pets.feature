Feature: Test PetStore API for managing pets

  Background:
    * def petData = read('pets.json')
    * def pet1 = petData.pets[0]
    * def pet2 = petData.pets[1]

  Scenario: Add a new pet
    Given url baseUrl + '/pet'
    And request pet1
    When method post
    Then status 200
    And print 'Add Pet response:', response

  Scenario: Get the added pet by ID
    Given url baseUrl + '/pet/' + pet1.id
    When method get
    Then status 200
    And print 'Get Pet response:', response
    And match response.name == pet1.name

Scenario: Update the pet's status to "sold"
    * def requestBody = { id: '#(pet1.id)', name: '#(pet1.name)', category: '#(pet1.category)', status: 'sold' }
    Given url baseUrl + '/pet'
    And request requestBody
    When method put
    Then status 200
    And match response.status == 'sold'
    And print 'Update Pet response:', response

  Scenario: Find pets by status "sold"
    Given url baseUrl + '/pet/findByStatus?status=sold'
    When method get
    Then status 200
    And match each response[*].status contains 'sold'
    And print 'Find Pets by status response:', response

  Scenario: Delete the pet by ID
    Given url baseUrl + '/pet/' + pet1.id
    When method delete
    Then status 200
    And print 'Delete Pet response:', response
