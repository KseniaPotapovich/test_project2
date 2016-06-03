trigger AccountTrigger on Account (before insert) 
{
    List<Account> newAcc = [SELECT ID, ShippingState, BillingState 
                            FROM Account
                            WHERE ID IN :Trigger.New];
    AccountTriggerHandler.CreateAccounts(newAcc);
}