package mynotes.entities;

import java.sql.Date;

public class Notes {

	public String notesTittle;
	private String notesDesc;
	private Date todoDate;

	public String getNotesTittle() {
		return notesTittle;
	}
	public void setNotesTittle(String notesTittle) {
		this.notesTittle = notesTittle;
	}
	public String getNotesDesc() {
		return notesDesc;
	}
	public void setNotesDesc(String notesDesc) {
		this.notesDesc = notesDesc;
	}
	public Date getTodoDate() {
		return todoDate;
	}
	public void setTodoDate(Date todoDate) {
		this.todoDate = todoDate;
	}
	public Notes(String notesTittle, String notesDesc, Date todoDate) {
		super();
		this.notesTittle = notesTittle;
		this.notesDesc = notesDesc;
		this.todoDate = todoDate;
	}
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return this.getNotesTittle()+":"+getNotesDesc();
		
	}

}
