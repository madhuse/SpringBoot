package com.mkyong.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.MappingIterator;
import com.fasterxml.jackson.databind.ObjectMapper;

import com.fasterxml.jackson.dataformat.csv.CsvMapper;
import com.fasterxml.jackson.dataformat.csv.CsvSchema;
import com.fasterxml.jackson.dataformat.csv.CsvSchema.Builder;

import de.siegmar.fastcsv.reader.CsvParser;
import de.siegmar.fastcsv.reader.CsvReader;
import de.siegmar.fastcsv.reader.CsvRow;

@Service

public class ExcelHandler {
	private Workbook wb;
	private Sheet sheet;
	private Cell cell;
	
	public Map getColumnNames(MultipartFile file) throws IOException
	{
		Map m=new HashMap<>();
		String lowerCaseFileName = file.getOriginalFilename().toLowerCase();
		

		if (lowerCaseFileName.endsWith(".xlsx")) {
			wb = new XSSFWorkbook(file.getInputStream());
			sheet = (XSSFSheet) wb.getSheetAt(0);
		} else {
			wb = new HSSFWorkbook(file.getInputStream());
			sheet = (HSSFSheet) wb.getSheetAt(0);
		}
		Row row;
		List<String> columns=new ArrayList<>();
		List<Integer> cells=new ArrayList<>();	
			row = sheet.getRow(0);
			for (int i = row.getFirstCellNum(); i <= row.getLastCellNum(); i++) {
			cell=row.getCell(i);
			if(cell!=null)
			{
				cell.setCellType(Cell.CELL_TYPE_STRING);
				columns.add(cell.getStringCellValue());
				cells.add(i);
			}
			}
			m.put("columns", columns);
			m.put("cells", cells);
			
			
			
		return m;
	}
	
	
	
	
	public void convertToCsv(File file,String type,List<String> cells,String outputFile)
	{
		
       //List<String> datatype=new ArrayList<>();
      try{
    	  String lowerCaseFileName = type.toLowerCase();
          StringBuffer data = new StringBuffer();
          FileOutputStream fos = new FileOutputStream(outputFile);
          String del=",";
          System.out.println(lowerCaseFileName+ "namee");

		if (lowerCaseFileName.endsWith(".xlsx")) {
			wb = new XSSFWorkbook(file);
			sheet = (XSSFSheet) wb.getSheetAt(0);
		} else {
			wb = new HSSFWorkbook(new FileInputStream(file));
			sheet = (HSSFSheet) wb.getSheetAt(0);
		}
		Row row;
		int size=cells.size();
		for (int i = 1; i <= sheet.getLastRowNum(); i++) {
			row = sheet.getRow(i);
			
			for(String j:cells)
			{
			cell=row.getCell(Integer.parseInt(j));
			
			if(cell!=null)
			{
				if(!j.equals(cells.get(size-1)))
        	    {
				switch (cell.getCellType()) 
                {
                case Cell.CELL_TYPE_BOOLEAN:
                	   // datatype.add("boolean");
                        data.append(cell.getBooleanCellValue() + del);
                        break;
                        
                case Cell.CELL_TYPE_NUMERIC:
                	if (DateUtil.isCellDateFormatted(cell)) {
                		//datatype.add("date");
                		data.append(cell.getDateCellValue() + del);
            		} else {
            			//datatype.add("long");
            			data.append(cell.getNumericCellValue() + del);
            		}
                        break;
                        
                case Cell.CELL_TYPE_STRING:
                	   // datatype.add("string");
                        data.append(cell.getStringCellValue().replaceAll("[\\/*\\n ,]"," ").replace("–","-") + del);
                        break;

                case Cell.CELL_TYPE_BLANK:
                	   // datatype.add("string");
                        data.append("" + del);
                        break;
                   
                default:
                	   // datatype.add("string");
                        data.append(cell + del);
                }
        	    }
				else
				{
					switch (cell.getCellType()) 
	                {
	                case Cell.CELL_TYPE_BOOLEAN:
	                	   // datatype.add("boolean");
	                        data.append(cell.getBooleanCellValue() );
	                        break;
	                        
	                case Cell.CELL_TYPE_NUMERIC:
	                	if (DateUtil.isCellDateFormatted(cell)) {
	                		//datatype.add("date");
	                		data.append(cell.getDateCellValue() );
	            		} else {
	            			//datatype.add("long");
	            			data.append(cell.getNumericCellValue() );
	            		}
	                        break;
	                        
	                case Cell.CELL_TYPE_STRING:
	                	   // datatype.add("string");
	                        data.append(cell.getStringCellValue().replaceAll("[\\/*\\n ,]"," ").replace("–","-").replace(" ", " ") );
	                        break;

	                case Cell.CELL_TYPE_BLANK:
	                	    //datatype.add("string");
	                        data.append("");
	                        break;
	                   
	                default:
	                	   // datatype.add("string");
	                        data.append(cell);
	                }
				}
                
                 
			}
			}
			data.append('\n');
		}
		
		 fos.write(data.toString().getBytes("UTF-8"));
	       fos.close();
	       
      }catch (Exception e)
      {
    	  e.printStackTrace();
    	  
      }
		
		
		
		
	}
	
	
	

    public static List<Map<String, Object>> readObjectsFromCsv(File file, List<String> colmappings,char del) throws IOException {
       //CsvSchema bootstrap = CsvSchema.emptySchema().withHeader();
        /*Builder builder=CsvSchema.builder();
        for(String column:colmappings)
        {
        	builder.addColumn(column);
        }
        CsvSchema bootstrap = builder.build();*/
        /*CsvSchema schema = CsvSchema.builder()
                .addColumn("firstName")
                .addColumn("lastName")
                .addColumn("age", CsvSchema.ColumnType.NUMBER)
                .build();*/
    	CsvSchema bootstrap;
       if(colmappings.size()<=0)
       {
    	   bootstrap = CsvSchema.emptySchema().withHeader(); 
       }
       else
       {
    	   Builder builder=CsvSchema.builder();
    	   int i=0;
    	 // ColumnType ct=dataTypes.get(i);
           for(String column:colmappings)
           {
           	builder.addColumn(column);
           	i++;
           }
           bootstrap = builder.build(); 
       }
       bootstrap=bootstrap.withColumnSeparator(del);
        CsvMapper csvMapper = new CsvMapper();
        MappingIterator<Map<String, Object>> mappingIterator = csvMapper.reader(Map.class).with(bootstrap).readValues(file);
       
        return mappingIterator.readAll();
    }
    
    
    public List<String> columnsFromCsv(File file,String delimiter)
    {
    	String line = "";
        String cvsSplitBy = delimiter;
        List<String> columns=new ArrayList<>();
		CsvReader csvReader = new CsvReader();
		csvReader.setFieldSeparator(delimiter.charAt(0));

		try (CsvParser csvParser = csvReader.parse(file, StandardCharsets.UTF_8)) {
		    CsvRow row;
		    if ((row = csvParser.nextRow()) != null) {
		        columns=row.getFields();
		        
		    }
		    System.out.println(columns+"....................................");
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return columns;
        
        

    }
    
    public List<String> getCsvData(File file,String delimiter)
    {
    	
        List<String> columns=new ArrayList<>();
        CsvReader csvReader = new CsvReader();
		csvReader.setFieldSeparator(delimiter.charAt(0));

		try (CsvParser csvParser = csvReader.parse(file, StandardCharsets.UTF_8)) {
		    CsvRow row;
		    csvParser.nextRow();
		    if ((row = csvParser.nextRow()) != null) {
		        columns=row.getFields();
		        
		    }
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return columns;
        
    }
    
    
    

    public static void writeAsJson(List<Map<String, Object>> data, File file) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(file, data);
    }
    
    
    
   
		
	

}
