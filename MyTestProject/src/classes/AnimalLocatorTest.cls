@isTest
private class AnimalLocatorTest 
{
	@isTest static void testGetAnimalNameById() 
    {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        // 
        String actualName = AnimalLocator.getAnimalNameById(2);
        String expectedName = 'bear';
        // Verify that the response received contains fake values
        System.assertEquals(actualName, expectedName);
    }
}