package com.mkyong.utils;

import java.util.ArrayList;
import java.util.List;

public class StringFormatUtils {
	
	public static String clearString(String query)
	 {
		 
		 query = query.replace("\\", "");
		 query = query.replace("/", "");
		 query = query.replace("\"", "");
		 query = query.replace(":", "");
		 query = query.replace("(", "");
		 query = query.replace(")", "");
		 query = query.replace("$", "");
		 query= query.replace("~", "");
		 query = query.replace("!", "");
		 query = query.replace("#", "");
		 query = query.replace("%", "");
		 query = query.replace("^", "");
		 query = query.replace("+", "");
		 query = query.replace("=", "");
		 query = query.replace("&", "");
		 query = query.replace("[", "");
		 query = query.replace("]", "");
		 query = query.replace("{", "");
		 query = query.replace("}", "");
		// query = query.replace("_", "");
		 query = query.replace("`", "");
		 query = query.replace(" ", "");
		 query=query.replace("\n", "");
		 query=query.replace("\t", "");
		 query = query.replaceAll("\\d+.*", "");
		 return query;
	 }
	
	public static ArrayList<String> listToString(String str) {
		ArrayList<String> skills = new ArrayList<String>();
		for(String singleSkill:str.split(","))
		{
			skills.add(singleSkill.trim());
		}
		return skills;
	}
	
	
	public static String getDatatype(String dataType)
	{
		
			String type="";
			switch(dataType)   
		      {
		      	case "integer":  
		          type="INTEGER";      break;
		        case "long":  
		          type="BIGINT";      break;
		        case "float":   
		          type="real";       break;
		        case "double": 
		          type="DOUBLE PRECISION";      break;
		        case "string": 
			          type="VARCHAR";      break; 
		        case "date": 
			          type="TIMESTAMP";      break;      
		        default:
		        	type=dataType;
		      } 
			return type;
		
	}
	
	public static List<String> generateDbColumns(List<String> columns,List<String> dataTypes){
		int i=0;
		List<String> dbColumns=new ArrayList<>();
		for(String column:columns)
		{
			
				dbColumns.add(column+" "+getDatatype(dataTypes.get(i)));
				
			i++;
		}
		return dbColumns;
	}
	
	
	public static boolean checkWhereClause(String query)
	{
		
		if(query.toLowerCase().contains("where"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public static String formatString(String res)
	{
		res=res.replace("[{", "");
		res=res.replace("{", "");
		res=res.replace("}]", "");
	
		return res;
		
	}
	
	public static String getExceptionFormat(String exception)
	{
		exception=exception.replace("\"", "'");
		exception=exception.replace("\n", " ");
		exception=exception.replace("\t", " ");
		return exception;
	}
	
	public static void main(String argsp[])
	{
		System.out.println(clearString("select444_kdkdkd	dkdkdk	\n jddjjd"));
	}

}
