package com.food;

import java.sql.*;
import java.util.ArrayList;


public class DAO {

	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/?user=root&autoReconnect=true&useSSL=false";
	static final String USER = "root";
	static final String PASSWORD = "root";

	static Connection CONN = null;
	static Statement STMT = null;
	static PreparedStatement PREP_STMT = null;
	static ResultSet RES_SET = null;

	public static ArrayList<Food> allFoods = new ArrayList<>();

	public static void connToDB() {

		try {
			
			Class.forName(JDBC_DRIVER);
			
			System.out.println("Trying to connect to the Database.");
			CONN = DriverManager.getConnection(DB_URL, USER, PASSWORD);
			System.out.println("Connected to Database.");

		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Failed to connect to the Database.");
			e.printStackTrace();
		}

		System.out.println();

	}

	public static void readFromDB() {

		connToDB();

		try {
			STMT = CONN.createStatement();
			RES_SET = STMT.executeQuery("SELECT * FROM assignments.food;");

			while (RES_SET.next()) {

				Food foodInDB = new Food();

				foodInDB.setFoodID(RES_SET.getInt("food_id"));
				foodInDB.setName(RES_SET.getString("name"));
				foodInDB.setCuisine(RES_SET.getString("cuisine"));
				foodInDB.setNumOfServings(RES_SET.getInt("num_of_servings"));
				foodInDB.setPrice(RES_SET.getDouble("price"));

				allFoods.add(foodInDB);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	} //read
	
	public static void writeToDB(Food food) {

		Food foodToAdd = new Food();

		foodToAdd = food;

		connToDB();

		try {
			PREP_STMT = CONN.prepareStatement(insertToDB);

			PREP_STMT.setString(1, foodToAdd.getName());
			PREP_STMT.setString(2, foodToAdd.getCuisine());
			PREP_STMT.setInt(3, foodToAdd.getNumOfServings());
			PREP_STMT.setDouble(4, foodToAdd.getPrice());

			PREP_STMT.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static String insertToDB = ("INSERT INTO `assignments`.`food` VALUES 'name' = ?, 'cuisine; = ?, 'num_of_servings' = ?, 'price' = ?");
	
}
