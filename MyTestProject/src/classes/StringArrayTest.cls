public class StringArrayTest 
{    
    public static List<String> generateStringArray(Integer str_num)
    {
        List<String> genList = new List<String>();
        for(Integer i = 0; i < str_num; ++i)
        {
            genList.add('Test ' + i);
        }
        return genList;
    }

}