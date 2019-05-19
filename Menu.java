
package jdbc_323;

import java.util.Scanner;

public class Menu {
    
    Scanner in = new Scanner(System.in);
    String sql;
    
    
    
    public void Insert()
    {
       int selection;
       String bookInsert[] = new String[5];
       String pubInsert[] = new String[4];
       String pubReplace;
       //in.nextLine();
       System.out.println("Make a selection" + '\n' + "1). Insert a book" + '\n' + "2). Insert a Publisher");
       selection = in.nextInt();
       
       switch(selection)
       {
           case 1:
           {
               in.nextLine();
               System.out.println("Book name?");
               bookInsert[0] = in.nextLine();
               System.out.println("Year Published?");
               bookInsert[1] = in.nextLine();
               System.out.println("Number of pages?");
               bookInsert[2] = in.nextLine();
               System.out.println("Publisher name?");
               bookInsert[3] = in.nextLine();
               System.out.println("Group name?");
               bookInsert[4] = in.nextLine();
               //SqlObject.insert(bookInsert);
               break;
           }
           case 2:
           {
               System.out.println("Publisher Name?");
               pubInsert[0] = in.nextLine();
               System.out.println("Publisher Address?");
               pubInsert[1] = in.nextLine();
               System.out.println("Publisher Phone?");
               pubInsert[2] = in.nextLine();
               System.out.println("Publisher Email?");
               pubInsert[3] = in.nextLine();
               System.out.println("What Publisher would you like to replace?");
               pubReplace = in.nextLine();
               //SqlObject.insert(pubInsert); (this must replace as well)
               break;
               
           }
           default:
           {
               
           }
       }
    }
    
    public void List()
    {
        int selection;
        String input;
       // in.nextLine();
        System.out.println("Make a selection" + '\n' + "1). All Writing Groups" + '\n' + "2). Data for a specific Writing Group" );
        System.out.println("3). All Publishers" + '\n' + "4). Data for a specific Publisher");
        System.out.println("5). All Books" + '\n' + "6). Data for a specific Book");
        selection = in.nextInt();
        
        switch(selection)
        {
            case 1:
            {
               
               //sql = SELECT* FROM WritingGroups;
               //SqlObject.Select(sql)
               break; 
            }
            case 2:
            {
               //in.nextLine();
               System.out.println("Enter the Writing Group");
               input = in.nextLine();
               //sql = SELECT* FROM WritingGroups WHERE GroupName = 'input';
               //SqlObject.Select(sql)
               break; 
            }
            case 3:
            {
                //sql = SELECT* FROM Publishers;
               //SqlObject.Select(sql)
               break; 
            }
            case 4:
            {
               //in.nextLine();
               System.out.println("Enter the Publisher");
               input = in.nextLine();
               //sql = SELECT* FROM Publisher WHERE PublisherName = 'input';
               //SqlObject.Select(sql)
               break; 
            }
            case 5:
            {
                //sql = SELECT* FROM Books;
               //SqlObject.Select(sql)
               break; 
            }
            case 6:
            {
               //in.nextLine();
               System.out.println("Enter the Book");
               input = in.nextLine();
               //sql = SELECT* FROM Book WHERE BookName = 'input';
               //SqlObject.Select(sql)
               break; 
            }
            default:
            {
               System.out.println("Invalid entry, try again");
               break; 
            }
        }
        
    }
    public void Remove()
    {
        String bookRemoval;
       // in.nextLine();
        System.out.println("Enter a Book to remove");
        bookRemoval = in.nextLine();
        // SqlObject.Remove(bookRemoval);
    }
    
    
    
    
    public void run()
    {
        char selection;
        boolean loop = true;
        while(loop)
        {
            System.out.println("(L)ist" + '\t' + "(I)nsert" + '\t' + "(R)emove" + '\t' + "(Q)uit");
            selection = in.next().charAt(0);
           // in.nextLine();
            
            switch(selection)
            {
                case 'l':
                case 'L':
                {
                    List();
                    break;
                }
                
                case 'I':
                case 'i':
                {
                    Insert();
                    break;
                }
                
                case 'R':
                case 'r':
                {
                    Remove();
                    break;
                }
                
                case 'q':
                case 'Q':
                {
                    System.out.println("Goodbye");
                    loop = false;
                    break;
                }
                default:
                {
                    System.out.println("Invalid selection, try again");
                    break;
                }
            }    
        }
    }
    
    
}
