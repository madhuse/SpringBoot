package com.mkyong.controller;


import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mkyong.service.FlatFileService;
import com.mkyong.utils.StringFormatUtils;

@Controller
public class UploadController {
	private static String UPLOADED_FOLDER = "D:\\csv file path\\";
	@Autowired
	FlatFileService flatFileService;

	@GetMapping("/")
	public String index() {
		return "flatfileupload";
	}

	@RequestMapping(value = "/multiplecsv", method = RequestMethod.POST)
	public String singleFileUpload(@RequestParam("file") MultipartFile mfiles,
			@RequestParam("uploadType") String uploadType, @RequestParam("tablename[]") ArrayList<String> tables,
			HttpServletRequest request, HttpSession session, Model m) throws Exception {
		System.out.println("delimiter is :" + request.getParameter("delimiter"));
		List<MultipartFile> files = new ArrayList<>();
		List<String> csvDataLength=new ArrayList<>();
		files.add(mfiles);
		System.out.println("List of files :" + files);

		System.out.println("uploadType is :" + uploadType);
		System.out.println("table are :" + tables);
	        
   		System.out.println("Key Sets are :" + request.getParameterMap().keySet());
		session.setAttribute("tables", tables);
		session.setAttribute("filesSize", files.size());
		List<String> savedFiles = flatFileService.saveFiles(files, session, tables);
		session.setAttribute("savedFiles", savedFiles);
		System.out.println("Saved files are :" + savedFiles);
		Map<String, Object> columnsFromCsv = flatFileService.getColumnsFromCsv(",", tables,session);
		session.setAttribute("files", savedFiles);
		session.setAttribute("columns", columnsFromCsv);
		System.out.println("columnsCsv :" + columnsFromCsv);
		String delimiter = "";
		if (request.getParameter("delimiter") != null) {
			delimiter = request.getParameter("delimiter");
			session.setAttribute("delimiter", delimiter);
		}
		//System.out.println(session.getAttribute("columnLength"));
		
		 String csvFile = "D://pdf//"+tables.get(0)+"0.csv";
		 
		 System.out.println("fileRead :"+csvFile);
	        String line = "";
	        BufferedReader br1 = new BufferedReader(new FileReader(csvFile));
	        String line1 = br1.readLine();
	        String line2="";
	        String[] columnsArray=line1.split(",");	 
	        List<String> listOfDataType=new ArrayList<>();
	        List<String> listOfDatavaluesincolumn=new ArrayList<>();
	        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
	        	
	            for(int i=0;i<=10;i++) {
	              line+= br.readLine()+","; 
	            }
	    		System.out.println(line);
	    		String[] arrayline=line.split(",");
	    		
	    		String [] afterSplitingByLastColumn=null;
	    		if(line.contains(columnsArray[columnsArray.length-1])) {
	            	afterSplitingByLastColumn= line.split(columnsArray[columnsArray.length-1]+",");
	             }
	    		
	    		
	             System.out.println("after Spliting get values");
	             for(String newAfterSpliting:afterSplitingByLastColumn) {
	            	 System.out.println(newAfterSpliting);
	             }
	    		
	             
	             String neString=afterSplitingByLastColumn[1];
	             System.out.println("..............................");
	             System.out.println(neString);
	    		 String[] updatedString=neString.split(",");
	             for(String update:updatedString) {
	            	 System.out.println(update);
	             }
	             
	            int lengthOfcolumn=columnsArray.length;
	    		for(int j=0;j<=lengthOfcolumn;j++) {
	            String onecolumn10rowsVal="";	    		
	            for(int i=0;i<=9;i++) {
		              onecolumn10rowsVal+=updatedString[(lengthOfcolumn*i)+j];
		    	}    		
	            System.out.println("onecolumn10rowsVal ::"+onecolumn10rowsVal);
	            listOfDatavaluesincolumn.add(onecolumn10rowsVal);
	            System.out.println("onecolumn10rowsVal ::"+onecolumn10rowsVal.length());
	            csvDataLength.add(""+onecolumn10rowsVal.length()+"");
	            
	    		}
	    		  
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
	        catch (ArrayIndexOutOfBoundsException e) {
	            e.printStackTrace();
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	        }
	        System.out.println("List of values :"+listOfDatavaluesincolumn);
	        session.setAttribute("columnLength", csvDataLength);
	 System.out.println("222222222222222222"+csvDataLength);
	  
		return "redirect:multiplecsv";
	}
	 @RequestMapping(value="/getDataType" , method=RequestMethod.GET)
		public @ResponseBody String getDataType(HttpSession session,HttpServletRequest request) throws IOException{
	    	System.out.println("request Parameter Value is :"+request.getParameter("iVal"));
	    	 JSONObject jsonObject=new JSONObject();
	     @SuppressWarnings("unchecked")
		ArrayList<String> tables=(ArrayList<String>) session.getAttribute("tables");
		 String line = "";
		 String csvFile = "D://pdf//"+tables.get(0)+"0.csv";
	     List<String> listOfDatavaluesincolumn=new ArrayList<>();
	     BufferedReader br1 = new BufferedReader(new FileReader(csvFile));
	     String line1 = br1.readLine();
	     String line2="";
	     String[] columnsArray=line1.split(",");	
			try (BufferedReader br = new BufferedReader(new FileReader(csvFile))){
	            for(int i=0;i<=4;i++) {
	              line+= br.readLine()+","; 
	            }
	    		System.out.println(line);
	    		String[] arrayline=line.split(",");
	    		
	    		String [] afterSplitingByLastColumn=null;
	    		if(line.contains(columnsArray[columnsArray.length-1])) {
	            	afterSplitingByLastColumn= line.split(columnsArray[columnsArray.length-1]+",");
	             }
	    		
	    		
	             System.out.println("after Spliting get values");
	             for(String newAfterSpliting:afterSplitingByLastColumn) {
	            	 System.out.println(newAfterSpliting);
	             }
	    			
	    		
	    		jsonObject.put("columnValues", columnsArray);
	    		
	             String neString=afterSplitingByLastColumn[1];
	             System.out.println("..............................");
	             System.out.println(neString);
	    		 String[] updatedString=neString.split(",");
	             for(String update:updatedString) {
	            	 System.out.println(update);
	             }
	           //  System.out.println("field values are"+columnsArray.toString());
	           //  jsonObject.put("columnValues", columnsArray);
	             int lengthOfcolumn=columnsArray.length;
	             
	             
	             for(int j=0;j<=lengthOfcolumn-1;j++) {
		             String onecolumn10rowsVal="";	    		
		             for(int i=0;i<=1;i++) {
		 	              onecolumn10rowsVal+=updatedString[(lengthOfcolumn*i)+j];
		 	    	    		
			            //System.out.println("onecolumn10rowsVal ::"+onecolumn10rowsVal);
			            if(onecolumn10rowsVal.matches("(\\d{1,2}.){2}\\d{4}")) {
			            	  List<String> listOfDataType=new ArrayList<>();
			            	  System.out.println("date condition is matched..........");
			            	listOfDataType.add("Date");
			            	listOfDataType.add("String");
			            	listOfDataType.add("Double");
			            	listOfDataType.add("Integer");
			            	listOfDataType.add("Timestamp");
			            	jsonObject.put(columnsArray[j], listOfDataType);
			            	System.out.println(columnsArray[j]+",,,,,,,"+listOfDataType);
			            }  
	             }
			}
	     		for(int j=0;j<=lengthOfcolumn-1;j++) {
	             String onecolumn10rowsVal="";	    		
	             for(int i=0;i<=3;i++) {
	 	              onecolumn10rowsVal+=updatedString[(lengthOfcolumn*i)+j];
	 	    	}      		
		            System.out.println("onecolumn10rowsVal ::"+onecolumn10rowsVal);
		            if(onecolumn10rowsVal.matches("[0-9]+")) {
		            	  List<String> listOfDataType=new ArrayList<>();
		            	listOfDataType.add("Integer");
		            	listOfDataType.add("String");
		            	listOfDataType.add("Double");
		            	listOfDataType.add("Date");
		            	listOfDataType.add("Timestamp");
		            	jsonObject.put(columnsArray[j], listOfDataType);
		            	System.out.println(columnsArray[j]+" Integer value");
		            }
		            else if(!onecolumn10rowsVal.matches("[0-9]+")) {
		            	  List<String> listOfDataType=new ArrayList<>();
		            	listOfDataType.add("String");
		            	listOfDataType.add("Integer");
		            	listOfDataType.add("Double");
		            	listOfDataType.add("Date");
		            	listOfDataType.add("Timestamp");
		            	jsonObject.put(columnsArray[j], listOfDataType);

		            	System.out.println(columnsArray[j]+" String value");
		            }
		            System.out.println("onecolumn10rowsVallength ::"+onecolumn10rowsVal.length());
		     
			}}
			catch(Exception e) {
				System.out.println(jsonObject.toString());
				e.printStackTrace();
			}
			return jsonObject.toString();
		}
	public int count(String filename) throws IOException {
	    InputStream is = new BufferedInputStream(new FileInputStream(filename));
	    try {
	    byte[] c = new byte[1024];
	    int count = 0;
	    int readChars = 0;
	    boolean empty = true;
	    while ((readChars = is.read(c)) != -1) {
	        empty = false;
	        for (int i = 0; i < readChars; ++i) {
	            if (c[i] == '\n') {
	                ++count;
	            }
	        }
	    }
	    return (count == 0 && !empty) ? 1 : count;
	    } finally {
	    is.close();
	   }
	}

	private static Vector<Vector<String>> readTXTFile(String csvFileName) throws Exception {

		  BufferedReader stream = new BufferedReader(
		                          new InputStreamReader(
		                          new FileInputStream(csvFileName)));
		  Vector<Vector<String>> csvData = new Vector<Vector<String>>();
		  String line;
		  while ((line = stream.readLine()) != null) {
		    csvData.add(new Vector<String>() );
		    String[] values = line.split(",");

		    for (int v=0; v<values.length; v++) {
		       csvData.get(csvData.size()-1).add(values[v]);
		    }
		  }

		  return csvData;
		}
	
	
	@RequestMapping(value = "createtable", method = RequestMethod.POST)
	public String createTable(HttpServletRequest request, HttpSession session, Model model) {
			Map<String, Object> map = new HashMap<>();
			@SuppressWarnings("unchecked")
			List<String> dbNames = (ArrayList<String>) session.getAttribute("tables");
			@SuppressWarnings("unchecked")
			List<String> savedFiles = (List<String>) session.getAttribute("savedFiles");
			System.out.println("table from session :" + dbNames);
			System.out.println("saved files from session :" + savedFiles);
			int f = 0;
			for (String tableName : dbNames) {

				List<String> columns = new ArrayList<>();
				List<String> dbColumns = new ArrayList<>();
				List<String> loadColumns = new ArrayList<>();
				List<String> dataTypes = new ArrayList<>();

				String[] not = request.getParameterValues(tableName + f + "[]");
				columns = new ArrayList<String>(Arrays.asList(not));

				System.out.println("columns are :" + columns);
				session.setAttribute("columnsValues", columns);
				if (request.getParameterValues("datatypes[]") != null) {
					String[] not1 = request.getParameterValues("datatypes[]");
					dataTypes = new ArrayList(Arrays.asList(not1));
				}
				System.out.println("data types are :" + dataTypes);
				List<String> geoPointFields = new ArrayList<>();
				int i = 0;
				for (String column : columns) {

					if (dataTypes.get(i).equals("point")) {
						geoPointFields.add(column);
						dbColumns.add(StringFormatUtils.clearString(column) + " " + "varchar");
					} else {
						dbColumns.add(StringFormatUtils.clearString(column) + " " + dataTypes.get(i));
					}
					loadColumns.add(StringFormatUtils.clearString(column));
					i++;
				}
				String delimiter = (String) session.getAttribute("delimiter");
				if (delimiter == null || delimiter == "" || delimiter.isEmpty()) {
					delimiter = ",";
				}
				System.out.println(delimiter);
				String header = (String) session.getAttribute("header");

				flatFileService.createPostgreSqlTable(tableName, savedFiles.get(f), dbColumns, delimiter, loadColumns,
						header);
			}
			int result=flatFileService.importData(session);
			
			List<String> tableList=flatFileService.getTableList();
			System.out.println(tableList);
			
			model.addAttribute("tableList", tableList);
			
			String resul=""+result+"";
	     
			return "getpgsqltables";
	}

	@GetMapping("/multiplecsv")
	public String uploadStatus() {
		return "multiplecsv";
	}
}