package com.yg.action;

public class ActionFactory {
	public Action getAction(String cmd) {
		// cmd가 null이 아니라고 가정함
		switch(cmd){
			case "+" :return new PlusAction();
			case "-" :return new MinusAction();
			case "*" :return new MultiplyAction();
			case "/" :return new DivideAction();
			case "result": return new ResultAction();
			case "form": return new FormAction();
		}
		
		return null;
	}
}
