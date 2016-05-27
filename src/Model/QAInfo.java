package Model;

import java.sql.Date;

public class QAInfo {       //题库表
	public int Id;//编号
	public String Subject;//科目
	public String QuestionType;//题目类型
	public String Article;//题目文章
	public String Question;//题目
	public String Answer;//答案
	public String TrueAnswer;//标准答案
	public int Score;//分值
	public Date SubTime;//提交时间
	public int DelFlag;//删除标识
	public String State;//状态
	public String Remark;//备注
}
