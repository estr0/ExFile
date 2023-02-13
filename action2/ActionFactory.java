package com.yg.action2;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}
	private ActionFactory() { }
	public Action getAction(String cmd) {
		Action action = null;
		switch(cmd) {
		case "board_list":
			action = new BoardListAction();
			break;
		}
		return action;
	}
		
}
