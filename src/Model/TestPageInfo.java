package Model;

import java.sql.Date;

public class TestPageInfo {   //试卷信息表
	public int Id;//编号
	public String PageNum;//试卷编号
	public String Subject;//科目
	public String PageType;//试卷类型
	public String[] ChoicesIds;//选择题号
	public String[] JudgeIds;//判断题号
	public String[] CompletionIds;//填空题号
	public String[] ShortQuestionIds;//简答题号
	public String[] BigQuestionIds;//大题题号
	public int TotalScore;//总分
	public Date SubTime;//提交时间
	public int DelFlag;//删除标识
	public String State;//状态
	public String Remark;//备注
}
