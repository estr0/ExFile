package com.yg.dto;

public class Board2Dto {
	private int bno;
	private String title;
	private String content;
	private String write;
	private String writedate;
	public Board2Dto(int bno, String title, String content, String write, String writedate) {
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.write = write;
		this.writedate = writedate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWrite() {
		return write;
	}
	public void setWrite(String write) {
		this.write = write;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
}
