package Core;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBOper {
    Connection conn=null;   //���ݿ�����
    PreparedStatement pstmt=null; //ִ�����ݿ����
    ResultSet rs=null;     //���ݼ�
    
    public DBOper(){
    	try {
			this.conn = this.getconn();    //�ڹ��캯��������DBOper���о�ʵ�����ݿ�����
		} catch (ClassNotFoundException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
    }
    //�������ݿⷽ��
    public Connection getconn()throws ClassNotFoundException,InstantiationException,IllegalAccessException,SQLException
    {
        //System.out.println("�������ݿ�ɹ�1");
        String driver="com.mysql.jdbc.Driver";   //�����ַ���
        String url="jdbc:mysql://localhost:3306/examinationdb?user=root&password=123456&useUnicode=true&characterEncoding=gbk";//�����ַ���
        //"jdbc:mysql://localhost:3306/newdb?user=root&password=123456&useUnicode=true&characterEncoding=gbk"
        Class.forName(driver);    //����JDBC����
        //System.out.println("�������ݿ�ɹ�3");
        conn=DriverManager.getConnection(url);//�������ݿ�
        System.out.println("�������ݿ�ɹ�2");
        return conn;
    }
    //ִ�����ݿ��ѯ�ķ��������ؽ����
    public ResultSet executeQuery(String sql,String[] params)
    {
        try{
            pstmt=conn.prepareStatement(sql);//��ȡPreparedStatement����
            //����PrepareStatement�����sql���Ĳ���
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    pstmt.setString(i+1, params[i]);
                }
            }
            //ִ�в�ѯ�����ؽ����
            rs=pstmt.executeQuery();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return rs;
    }
    //ִ�����ݿ���£�����ɾ���ģ�����������ִ������
    public int executeUpdate(String sql, String[] params)
    {
        int n=0;
        try{
            pstmt=conn.prepareStatement(sql);//��ȡPreparedStatement����
            //����PrepareStatement�����sql���Ĳ���
            if(params!=null){
                for(int i=0;i<params.length;i++){
                    pstmt.setString(i+1, params[i]);
                }
            }
            //ִ�в�ѯ�����ؽ����
            n=pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return n;
    }
    //�رն����ͷ���Դ����
    public void closeAll()
    {
        //�ر����ݼ�
        if(rs!=null){       
            try{
                rs.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        //�ر�Statement
        if(pstmt!=null){      
            try{
                pstmt.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        //�ر����ݿ�����
        if(conn!=null){      
            try{
                conn.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
}