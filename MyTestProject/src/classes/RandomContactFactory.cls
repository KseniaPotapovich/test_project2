public class RandomContactFactory 
{
	public static List<Contact> generateRandomContacts(Integer num, String lastName)
    {
        List<Contact> contList = new List<Contact>();
        for(Integer i = 0; i < num; ++i)
            contList.add(new Contact(FirstName = 'Test ' + i, LastName = lastName));
        return contList;
    }
}