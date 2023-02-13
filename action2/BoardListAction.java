package com.yg.action2;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yg.dao.Board2Dao;
import com.yg.dto.Board2Dto;

public class BoardListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Board2Dao dao = new Board2Dao(); 
		ArrayList<Board2Dto> listBoard = null;
		try {
		listBoard = dao.getAllBoardList();
		}catch(Exception e) {e.printStackTrace();}
		
		request.setAttribute("list", listBoard);
		request.getRequestDispatcher("Controller?command=board_list_view").forward(request, response);
	}
	
}
