package Model;

import java.sql.Date;

public class SubExamInfo {       //���������Ϣ��
	public int Id;//���
	public String StuNum;//ѧ��
	public String PageNum;//�Ծ���
	public String Subject;//��Ŀ
	public String PageType;//�Ծ�����
	
	public String[] ChoicesIds;//ѡ�����
	public String[] JudgeIds;//�ж����
	public String[] CompletionIds;//������
	public String[] ShortQuestionIds;//������
	public String[] BigQuestionIds;//�������
	
	public Date SubTime;//�ύʱ��
	public int DelFlag;//ɾ����ʶ
	public String State;//״̬
	public String Remark;//��ע
}
