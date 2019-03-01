package com.mkyong.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mkyong.dao.FlatFileDao;
import com.mkyong.utils.ExcelHandler;
import com.mkyong.utils.StringFormatUtils;

@Service
public class FlatFileService {
  public static String locations="D://pdf//";
  
  @Autowired
  private ExcelHandler excelHandler;
  @Autowired
  private FlatFileDao flatFileDao;
  
  
	public List<String> saveFiles(List<MultipartFile> files, HttpSession session, ArrayList<String> fileNames) throws IllegalStateException, IOException {
		int fileSize=(int) session.getAttribute("filesSize");
		List<String> savedFiles=new ArrayList<>();
		File convFile;
		if(fileSize>=1)
		{
			int count=1;
		      for (MultipartFile file : files) {
		    	  
		       	if (!file.isEmpty()) {
		       		String fileName=StringFormatUtils.clearString(fileNames.get(count-1))+""+(count-1);
				   
				    convFile = new File(locations+fileName+".csv");
					 file.transferTo(convFile);
					 savedFiles.add(fileName);
					
			}
		       	
		       	count++;
	             }
		}
		return savedFiles;
	}

	

	public Map<String, Object> getColumnsFromCsv(String delimiter, ArrayList<String> tables ,HttpSession session) throws IOException {
		Map<String,Object> csvcolumns=new HashMap<>();
		int c=0;	int d=0;
		List<String> csvDataLength=new ArrayList<>();
		//List<String>newData=new ArrayList<String>();
		for(String file:tables)
		{
			File csvFile=new File(locations+file+c+".csv");
			
			System.out.println("newfile name :"+csvFile);
			
		List<String> columns=excelHandler.columnsFromCsv(csvFile, delimiter);
		List<String> csvData=excelHandler.getCsvData(csvFile, delimiter);
		
	      
		
		System.out.println("columns:"+columns);
		System.out.println("columns :"+csvDataLength);
		csvcolumns.put(file+c, columns);
		System.out.println("csvfile length data :"+csvDataLength);
		
		
		//csvcolumns.put(file+c+"data", csvDataLength);
		System.out.println("sdfdsfds"+csvcolumns);
		//csvcolumns.put(file+"data", csvData);
		
		c++;
		}
		
		
		
		String csvFile1 = FlatFileService.locations+tables.get(0)+"0.csv";
        String line = "";
        System.out.println("csvFile reading :"+csvFile1);
        BufferedReader br1 = new BufferedReader(new FileReader(csvFile1));
        String line1 = br1.readLine();
        System.out.println("columns are :"+line1);
        String[] columnsArray=line1.split(",");
        
     
		
		return csvcolumns;
	}

	


	public void createPostgreSqlTable(String tableName, String string, List<String> dbColumns, String delimiter,
			List<String> loadColumns, String header)  {
		
		System.out.println("Services :"+tableName+"\n"+string+"\n"+dbColumns+"\n"+delimiter+"\n"+loadColumns+"\n"+header+"\n");
		flatFileDao.createTable(dbColumns, tableName);
		
	}
	
	public int importData(HttpSession session) {
		return flatFileDao.importData(session);
	}



	public List<String> getTableList() {
		return flatFileDao.getTables();
	}
}

