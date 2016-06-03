public class ParkLocator 
{
    public static String[] country(String countr)
    {
        ParkService.ParksImplPort parkServ = new ParkService.ParksImplPort();
        String[] parks = parkServ.byCountry(countr);
        return parks;
    }
}