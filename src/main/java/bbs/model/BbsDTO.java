package bbs.model;

import java.sql.Date;

public class BbsDTO {
	
	private int idx;
	private String title;
	private String writer;
	private String content;
	private Date write_day;
	private int readnum;
	private int lev;
	private int ref;
	private int sunbun;
	public BbsDTO() {
		super();
	}
	public BbsDTO(int idx, String title, String writer, String content, Date write_day, int readnum, int lev, int ref,
			int sunbun) {
		super();
		this.idx = idx;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.write_day = write_day;
		this.readnum = readnum;
		this.lev = lev;
		this.ref = ref;
		this.sunbun = sunbun;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWrite_day() {
		return write_day;
	}
	public void setWrite_day(Date write_day) {
		this.write_day = write_day;
	}
	public int getReadnum() {
		return readnum;
	}
	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getSunbun() {
		return sunbun;
	}
	public void setSunbun(int sunbun) {
		this.sunbun = sunbun;
	}

	

}
