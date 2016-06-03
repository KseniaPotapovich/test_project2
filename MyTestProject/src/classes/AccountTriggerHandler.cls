public class AccountTriggerHandler 
{
    public static void CreateAccounts(List<Account> accList)
    {
        for(Account a : accList)
        {
            a.ShippingState = a.BillingState;
        }
    }
}