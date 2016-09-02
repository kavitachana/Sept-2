package com.food;

public class Food {
	
	private int foodID = 0;
	private String name = null;
	private String cuisine = null;
	private int numOfServings = 0;
	private double price = 0.0;
	
	public Food() {
		super();
	}

	public int getFoodID() {
		return foodID;
	}

	public void setFoodID(int foodID) {
		this.foodID = foodID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCuisine() {
		return cuisine;
	}

	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}

	public int getNumOfServings() {
		return numOfServings;
	}

	public void setNumOfServings(int numOfServings) {
		this.numOfServings = numOfServings;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
}
