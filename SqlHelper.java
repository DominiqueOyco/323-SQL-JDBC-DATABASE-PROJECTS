package jdbc_323;

public class SqlHelper {
    
    
    
    public void initializeDataBase()
    {
        //do stuff
    }
    
    public void Select(String sql)
    {
        // default sql selecter
    }
    
    public void Select(String table, String sql)
    {
        //overloaded sql selecter for specific values
        // i.e : Select from pub where pubname = "..."
    }
    
    public void Insert(String []values)
    {
        if(values.length == 5)
        {
            //book insert
        }
        else if(values.length == 4)
        {
            //pub insert
        }
    }
    public void pubReplace(String orginalPub, String newPub)
    {
        //replace pub
    }
    
    public void Print()
    {
        
    }
    
    
    
}
