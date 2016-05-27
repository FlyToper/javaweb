package Model;

import java.lang.reflect.Array;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import Core.DBOper;

public class StuInfo {    //学生信息表
	public int Id;//编号
	public String StuNum;//学号
	public String StuPwd;//密码
	public String StuName;//姓名
	public String Gender;//性别
	public String IdCard;//身份证号
	public String ClassNum;//班级编号
	public String ClassName;//班级名字
	public Date SubTime;//注册时间
	public int DelFlag;//删除标识
	public String State;//状态
	public String Remark;//备注
	
	private DBOper db;
	//public String IsLogin;
	
	//数据库查询、更新
	/*
	 * 根据学号查询学生信息
	 * @param stuNum 学号
	 */
	//检验登录信息（学号、密码）是否正确
	public  String CheckLogin(String username, String password){
		String sql="select * from StuInfo where StuNum=? and StuPwd=? and DelFlag=0";//sql语句等于不能写==
		String[] params={username,password};
		//调用DBOper类的查询方法executeQuery返回结果集
		DBOper db=new DBOper();
		ResultSet rst = db.executeQuery(sql, params);
		
		StuInfo s = new StuInfo();
		try {
			if(rst.next()){   //检查返回的结果集是否有数据
				return "success";//有数据证明登录成功，返回“success”
			}else{
				return "error";  //没有数据证明登录错误，返回"error"
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			//e.printStackTrace();
			return "error";
		}
	}
	
	//根据学号查询学生信息表
	public StuInfo getStuInfoByStuNum(String stuNum) throws ParseException{
		StuInfo s = new StuInfo();
		
		String sql = "select * from StuInfo where DelFlag =0 and  StuNum =?";
		String[] params = {stuNum};
		
		DBOper db = new DBOper();
		ResultSet rst =  db.executeQuery(sql, params);
		
		try {
			if(rst.next()){
				//取出学号填入
				if(rst.getString(2) == null){
					s.StuNum="";
				}else{
					s.StuNum=rst.getString(2);
				}
				//取出姓名填入
				if(rst.getString(4) == null){
					s.StuName="";
				}else{
					s.StuName=rst.getString(4);
					System.out.println("******"+s.StuName);
				}
				//取出性别填入
				if(rst.getString(5) == null){
					s.Gender="";
				}else{
					s.Gender=rst.getString(5);
				}
				//取出身份证填入
				if(rst.getString(6) == null){
					s.IdCard="";
				}else{
					s.IdCard=rst.getString(6);
				}
				//取出班级编号填入
				if(rst.getString(7) == null){
					s.ClassNum="";
				}else{
					s.ClassNum=rst.getString(7);
				}
				//取出班级填入
				if(rst.getString(8) == null){
					s.ClassName="";
				}else{
					s.ClassName=rst.getString(8);
				}
				//取出注册时间填入
				if(rst.getDate(9) == null){
					Date date = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					s.SubTime=sdf.parse( sdf.format(date));//用系统当前时间赋值
				}else{
					s.SubTime=rst.getDate(9);
				}
				
			}else{
				
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		return s;
	}
	public ArrayList<StuInfo> getAllStuInfo(){
		ArrayList<StuInfo> list = new ArrayList<StuInfo>();
	
		String sql = "select * from StuInfo where DelFlag =0";
		
		//遍历返回的数据
		for(int i = 0; i< 10; i++){
			StuInfo s = new StuInfo();
			list.add(s);
		}
		return list;
	}

}

