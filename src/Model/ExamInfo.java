package Model;

import java.sql.Date;

public class ExamInfo {       //考试信息表
	public int Id;//编号
	public String ClassNum;//班级编号
	public String ClassName;//班级名称
	public String PageNum;//试卷编号
	public String Subject;//科目
	public String PageType;//试卷类型
	public int TotalScore;//总分
	public int ExamTime;//考试时间
	public Date StartTime;//开始时间
	public Date EndTime;//结束时间
	public Date SubTime;//提交时间
	public String SubNum;//提交人
	public int DelFlag;//删除标识
	public String State;//状态
	public String Remark;//备注
	
}
