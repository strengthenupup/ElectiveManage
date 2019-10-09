package com.lyq.bean.mySql;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Grade_Sql {
	public Boolean grade_Sql(String cNo, String sNo, String grade) {
		(new MysqlLinking()).getLink();// 连接数据库
		Connection conn = MysqlLinking.conn;// 得到连接数据库的Connection对象
		Boolean bool = false;
		if (conn != null) {
			try {
				String sql = "update electcourse set Grade=? where C_No=? and S_No=?"; // 根据课程编号和学号给该学生的该选课评分
				// 创建PreparedStatement对象
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, grade);
				ps.setString(2, cNo);
				ps.setString(3, sNo);
				int count = ps.executeUpdate();
				if (count >= 1) {
					bool = true;
				}
			} catch (Exception s) {
				s.printStackTrace();
			}
		} else {
			// 发送数据库连接错误提示信息
			System.out.println("数据库连接错误！");
		}
		return bool;
	}

}
