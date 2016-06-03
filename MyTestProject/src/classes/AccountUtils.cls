public class AccountUtils 
{
    public static List<Account> accountsByState(String state)
    {
        List<Account> accList = [SELECT ID, Name FROM Account WHERE BillingState = :state];
        return accList;
    }
}