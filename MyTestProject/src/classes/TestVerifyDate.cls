@isTest private class TestVerifyDate 
{
	@isTest static void CheckDatesTest_past()
    {
        Date todayDate = System.Date.today();
        Date curDate = VerifyDate.CheckDates(todayDate, todayDate.toStartOfMonth());
        Integer totalDays = Date.daysInMonth(todayDate.year(), todayDate.month());
        System.assertEquals(System.Date.newInstance(todayDate.year(), todayDate.month(), 
                                                    totalDays), curDate);
    }
    
	@isTest static void CheckDatesTest_normal()
    {
        Date todayDate = System.Date.today();
        Date date2 = todayDate.addDays(5);
        Date curDate = VerifyDate.CheckDates(todayDate, date2);
        System.assertEquals(date2, curDate);
    }
    
    @isTest static void CheckDatesTest_future()
    {
        Date todayDate = System.Date.today();
        Date date2 = todayDate.addDays(50);
        Date curDate = VerifyDate.CheckDates(todayDate, date2);
        Integer totalDays = Date.daysInMonth(todayDate.year(), todayDate.month());
        System.assertEquals(System.Date.newInstance(todayDate.year(), todayDate.month(), 
                                                    totalDays), curDate);
    }
}