@isTest private class TestRestrictContactByName 
{
	@isTest static void RestrictContactByNameTest_goodInsert()
    {
        Contact cont = new Contact(LastName='GoodLastName');

        Test.startTest();
        Database.SaveResult result = Database.insert(cont, false);
        Test.stopTest();

        // Verify 
        System.assert(result.isSuccess());
    }
    
    @isTest static void RestrictContactByNameTest_badInsert()
    {
		Contact cont = new Contact(LastName='INVALIDNAME');

        Test.startTest();
        Database.SaveResult result = Database.insert(cont, false);
        Test.stopTest();

        // Verify 
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "' + cont.LastName + '" is not allowed for DML',
                             result.getErrors()[0].getMessage());        
    }
    
}