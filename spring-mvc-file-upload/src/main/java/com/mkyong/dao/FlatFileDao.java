package com.mkyong.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

@Repository
public class FlatFileDao {
	String columns="";
	String tableName="";
	String location="D://pdf//";
   public int createTable(List<String> dbColumns,String tableName)  {
	//System.out.println("In flatFileDao :::"+columns+"\n tableName is:"+tableName);
	   
	   // System.out.println(	"In dao :"+columns+" tableName :"+tableName);
	   String columns = "";
	  // columns.get(tableName.);
	   for(String columnwithDT:dbColumns) {
	   
		   columns+=columnwithDT+",";
	   }
	   //System.out.println("length of column :"+columns.length());
	   columns=columns.substring(0, columns.length() - 1);
	   this.columns=columns;
	   this.tableName=tableName;
	  // System.out.println("Column string :"+columns);
	   try {
		Class.forName("org.postgresql.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	DataSource dataSource = new DriverManagerDataSource("jdbc:postgresql://localhost:5432/postgres","postgres","madhu");
	         JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	 	return  jdbcTemplate.update("CREATE TABLE public."+tableName+"("+columns+"); ");
	
}
	public int importData(HttpSession session) {
	   String delimiter=(String) session.getAttribute("delimiter");
	   @SuppressWarnings("unchecked")
	List<String> savedFiles=(List<String>) session.getAttribute("savedFiles");
	   List<String> columnsValue=(List<String>) session.getAttribute("columnsValues");
	   String sVal="";
	   for(String s:columnsValue) {
		   sVal+=s+",";
	   }
	   sVal=sVal.substring(0, sVal.length() - 1);
	   System.out.println("Svalue is :"+sVal);
	   
	   String pathOfcsv=location+savedFiles.get(0)+".csv";
		String Query="COPY "+tableName+"("+sVal+") FROM '"+pathOfcsv+"' DELIMITER '"+session.getAttribute("delimiter")+"' CSV HEADER;";
		DataSource dataSource = new DriverManagerDataSource("jdbc:postgresql://localhost:5432/postgres","postgres","madhu");
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
	return  jdbcTemplate.update(Query);
		
	}
	public List<String> getTables() {
		DataSource dataSource = new DriverManagerDataSource("jdbc:postgresql://localhost:5432/postgres","postgres","madhu");
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        
		return jdbcTemplate.queryForList("SELECT table_name\r\n" + 
				"  FROM information_schema.tables WHERE table_schema='public'\r\n" + 
				"   AND table_type='BASE TABLE';", String.class);
	}
	
	
}
