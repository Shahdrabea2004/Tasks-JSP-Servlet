package Task1;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/TestController")
public class TestController extends HttpServlet {
	
	@Resource(name="jdbc/connection")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ItemServices itemServices=new ItemServicesImp(dataSource);
			Item item= null;
			//find by id
			item=itemServices.findItemById(1);
			response.getWriter().append("<h1>"+item.getName()+"</h1>");
			//delete item
			itemServices.deletItem(2);
			response.getWriter().append("<h1>"+"Success"+"</h1>");
			//save item
			item=new Item("Laptop",100,20);
			itemServices.saveItem(item);
			response.getWriter().append("<h1>"+item.getName()+"</h1>");
			//update item
			item=new Item(100,"Laptop2",100,20);
			itemServices.updateItem(item);
			response.getWriter().append("<h1>"+item.getName()+"</h1>");
			
			//get all item size
			response.getWriter().append("<h1>"+itemServices.getAllItem().size()+"</h1>");
			
			//search item
			ArrayList<Item> searchItems=itemServices.searchItem("blush");
			for(Item x:searchItems) {
			response.getWriter().append("<h1>"+x.getName()+" "+x.getPrice()+"</h1>");
			}
			//save all item
			ArrayList<Item> itemsSaved=new ArrayList<Item>();
			itemsSaved.add(new Item("Laptop2",100,20));
			itemsSaved.add(new Item("Laptop5",100000,50));
			itemsSaved.add(new Item("Laptop6",100,20));
			try {
				itemServices.saveListOfItem(itemsSaved);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			response.getWriter().append("<h1>"+"Success"+"</h1>");
			
			
	}

}
