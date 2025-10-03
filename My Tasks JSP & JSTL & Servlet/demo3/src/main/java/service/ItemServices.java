package service;

import java.sql.SQLException;
import java.util.*;
import model.Item;

public interface ItemServices {
	
	public ArrayList<Item> getAllItem();
	public Item findItemById(int id);
	public void saveItem(Item item);
	public void updateItem(Item item);
	public void deletItem(int id);
	public void saveListOfItem(ArrayList<Item> items) throws SQLException;
	public ArrayList<Item> searchItem(String value);

}
