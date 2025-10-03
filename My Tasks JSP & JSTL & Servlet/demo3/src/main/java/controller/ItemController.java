package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import model.Item;
import service.ItemServices;
import serviceImpl.ItemServicesImp;

@WebServlet("/ItemController")
public class ItemController extends HttpServlet {

	@Resource(name = "jdbc/connection")
	private DataSource dSource;
	private ItemServices itemServices;

	public ItemController() {
		super();
	}
 
	@Override
	public void init() throws ServletException {
		super.init();
		itemServices = new ItemServicesImp(dSource);
	}
	// can add this also
	/*
	 * @PostConstruct public void initServlet() { itemServices = new
	 * ItemServicesImp(dSource); }
	 */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
			action = "LOAD_ITEMS";
		}
		switch (action) {
		case "LOAD_ITEMS":
			loadItems(request, response);
			break;
		case "ADD":
			addItems(request, response);
			break;
		case "DELETE":
			deleteItems(request, response);
			break;
		case "UPDATE":
			updateItems(request, response);
			break;
		case "LOAD_ITEM":
			loadItem(request, response);
			break;
		default:
			loadItems(request, response);
		}

	}

	private void loadItem(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void updateItems(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void deleteItems(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void addItems(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void loadItems(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Item> listItems = itemServices.getAllItem();
		request.setAttribute("itemsData", listItems);
		try {
			request.getRequestDispatcher("/View/loadItems.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			System.out.println(e.toString());
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
