package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.ContactCompleteDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ContactCompleteDAO {

	List<ContactCompleteDTO> contactCompleteDTOList = new ArrayList<ContactCompleteDTO>();

	/**
	 * お問い合わせ情報を引き出す
	 * @return
	 */
	public List<ContactCompleteDTO> contactSelect() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "select * from contact ";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				ContactCompleteDTO contactCompleteDTO = new ContactCompleteDTO();
				contactCompleteDTO.setName(rs.getString("name"));
				contactCompleteDTO.setQtype(rs.getString("qtype"));
				contactCompleteDTO.setContent(rs.getString("content"));
				contactCompleteDTOList.add(contactCompleteDTO);

			}

		} catch(SQLException e) {
			e.printStackTrace();

		} try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return contactCompleteDTOList;

	}

	/**
	 * お問い合わせ情報をDBに入れる
	 * @param name
	 * @param qtype
	 * @param content
	 * @return
	 */
	public int contact(String name,String qtype,String content) {
		int ret = 0;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "INSERT INTO contact VALUES(?,?,?) ";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, qtype);
			ps.setString(3, content);

			int i = ps.executeUpdate();
			if(i > 0) {
				System.out.println(i+"件登録しました。");
				ret = i;

			}
		} catch(SQLException e) {
			e.printStackTrace();

		} try {
			con.close();

		} catch(SQLException e) {
			e.printStackTrace();

		}

		return ret;

	}

}