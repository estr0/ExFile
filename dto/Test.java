package com.yg.dto;

import java.text.DecimalFormat;
import java.util.ArrayList;

class MenuDto {
	private String name;
	private String price;
	
	MenuDto(String name, String price) {
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return name + "\t" + price + "원";
	}
}
public class Test {
	public static void main(String[] args) {
		ArrayList<MenuDto> list1 = new ArrayList<MenuDto>();
		DecimalFormat decFormat = new DecimalFormat("###,###");
		String s = "국밥//8000//수육//28000//술국//17000//토종순대//10000";
		String[] arr = s.split("//");
		for(int i=0; i<=arr.length-1; i+=2) {
			String name = arr[i];
			int str = Integer.parseInt(arr[i+1]);
			String price = decFormat.format(str);
			list1.add( new MenuDto(name, price) );
		}
		
		for(int i=0; i<=list1.size()-1; i++) {
			System.out.println(list1.get(i));
		}
	}
}
