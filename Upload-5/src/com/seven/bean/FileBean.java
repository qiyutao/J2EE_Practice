package com.seven.bean;

public class FileBean {
	private String name;
	private long size;
	private int line;
	private int word;
	
	public FileBean() {
		name = null;
		size = 0;
		line = 0;
		word = 0;
	}
	
	public FileBean(String name, long size, int line, int word) {
		super();
		this.name = name;
		this.size = size;
		this.line = line;
		this.word = word;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the size
	 */
	public long getSize() {
		return size;
	}

	/**
	 * @param size the size to set
	 */
	public void setSize(long size) {
		this.size = size;
	}

	/**
	 * @return the line
	 */
	public int getLine() {
		return line;
	}

	/**
	 * @param line the line to set
	 */
	public void setLine(int line) {
		this.line = line;
	}

	/**
	 * @return the word
	 */
	public int getWord() {
		return word;
	}

	/**
	 * @param word the word to set
	 */
	public void setWord(int word) {
		this.word = word;
	}
	
	
}
