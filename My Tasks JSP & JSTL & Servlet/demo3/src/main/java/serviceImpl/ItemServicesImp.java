package serviceImpl;

import java.sql.*;
import java.util.ArrayList;
import javax.sql.DataSource;
import model.*;
import service.*;

public class ItemServicesImp implements ItemServices {
	
    private DataSource dataSource;
    
    public ItemServicesImp(DataSource  dataSource) {
        this. dataSource =  dataSource;
        
    }
    

	
	@Override
	public ArrayList<Item> getAllItem() {
		ArrayList<Item> items =new ArrayList<Item>();
	    Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
		try {
			connection=  dataSource.getConnection();
			statement=connection.createStatement();
			String query = "SELECT * FROM item order by id";
			resultSet=statement.executeQuery(query);
			while(resultSet.next()) {
				Item item=new Item();
				item.setId(resultSet.getInt("id"));
				item.setName(resultSet.getString("name"));
				item.setPrice(resultSet.getDouble("price"));
				item.setTotalNumber(resultSet.getInt("total_number"));
				
				items.add(item); 
			}
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}finally {
			
		     try { if(resultSet != null) resultSet.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(statement != null) statement.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(connection != null) connection.close(); } catch(SQLException e) {System.out.println(e.toString());}   
		}
		return items;
	}
	
	
	@Override
	public Item findItemById(int id) {
		 Connection connection = null;
			PreparedStatement statement = null;
	        ResultSet resultSet = null;
	        Item item = null;
			try {
				connection=  dataSource.getConnection();
				String query = "SELECT * FROM item WHERE id = ?";
				statement=connection.prepareStatement(query);
				statement.setInt(1, id);
				resultSet=statement.executeQuery();
				if (resultSet.next()) {
					item=new Item();
					item.setId(resultSet.getInt("id"));
					item.setName(resultSet.getString("name"));
					item.setPrice(resultSet.getDouble("price"));
					item.setTotalNumber(resultSet.getInt("total_number"));
					return item;
				}
				
			} catch (SQLException e) {
				
				System.out.println(e.toString());
			}finally {
				
			     try { if(resultSet != null) resultSet.close(); } catch(SQLException e) {System.out.println(e.toString());}
			     try { if(statement != null) statement.close(); } catch(SQLException e) {System.out.println(e.toString());}
			     try { if(connection != null) connection.close(); } catch(SQLException e) {System.out.println(e.toString());}   
			}
			return null;
	}


	@Override
	public void saveItem(Item item){
		Connection connection=null;
		PreparedStatement statement=null;

		try {
			connection= dataSource.getConnection();
			String sql="insert into item(name,price,total_number)"+"values (?, ?, ?)";
			statement=connection.prepareStatement(sql);
			statement.setString(1, item.getName());
			statement.setDouble(2, item.getPrice());
			statement.setInt(3, item.getTotalNumber());
			
			statement.execute();
			
			
		}catch (SQLException e) {
			
			System.out.println(e.toString());
		}finally {

		     try { if(statement != null) statement.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(connection != null) connection.close(); } catch(SQLException e) {System.out.println(e.toString());}   
		}
		
	}


	@Override
	public void updateItem(Item item){
		Connection connection=null;
		PreparedStatement statement=null;
		try {
			connection= dataSource.getConnection();
			String sql="update item set name=?,price=?,total_number=? where id=?";
			statement=connection.prepareStatement(sql);
			
			statement.setString(1, item.getName());
			statement.setDouble(2, item.getPrice());
			statement.setInt(3, item.getTotalNumber());
			statement.setInt(4, item.getId());
			
			statement.execute();
			
		} catch (SQLException e) {
			System.out.println(e.toString());
			
		}finally {
			 try { if(statement != null) statement.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(connection != null) connection.close(); } catch(SQLException e) {System.out.println(e.toString());}   
		}
		
	}


	@Override
	public void deletItem(int id)  {
		
		Connection connection=null;
		PreparedStatement statement=null;
		try {
			connection= dataSource.getConnection();
			String sql="delete from item where id=?";
			statement=connection.prepareStatement(sql);
			statement.setInt(1,id);
			
			statement.execute();
			
		} catch (SQLException e) {
			System.out.println(e.toString());
			
		}finally {
			 try { if(statement != null) statement.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(connection != null) connection.close(); } catch(SQLException e) {System.out.println(e.toString());}   
		}
	}


	@Override
	public void saveListOfItem(ArrayList<Item> items) throws SQLException{
		for(Item x:items) {
			saveItem(x);
		}
	}


	@Override
	public ArrayList<Item> searchItem(String value){
		ArrayList<Item> items =new ArrayList<Item>();
		Connection connection = null;
		PreparedStatement statement = null;
        ResultSet resultSet = null;
        Item item = null;
		try {
			connection=  dataSource.getConnection();
			String query = "SELECT * FROM item WHERE name like ?";
			statement=connection.prepareStatement(query);
			statement.setString(1, "%"+value+"%");
			resultSet=statement.executeQuery();
			
			while(resultSet.next()) {
				item=new Item();
				item.setId(resultSet.getInt("id"));
				item.setName(resultSet.getString("name"));
				item.setPrice(resultSet.getDouble("price"));
				item.setTotalNumber(resultSet.getInt("total_number"));
				items.add(item);
			}
			
		} catch (SQLException e) {
			
			System.out.println(e.toString());
		}finally {
			
		     try { if(resultSet != null) resultSet.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(statement != null) statement.close(); } catch(SQLException e) {System.out.println(e.toString());}
		     try { if(connection != null) connection.close(); } catch(SQLException e) {System.out.println(e.toString());}   
		}
		
		return items;
	}



}
