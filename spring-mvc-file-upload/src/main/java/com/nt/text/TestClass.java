package com.nt.text;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.mkyong.service.FlatFileService;

import ch.qos.logback.core.status.OnErrorConsoleStatusListener;

public class TestClass {

	public static void main(String[] args) throws IOException, JSONException {
	    String csvFile = "D://pdf//cvxx0.csv";;
        String line = "";
        BufferedReader br1 = new BufferedReader(new FileReader(csvFile));
        String line1 = br1.readLine();        
        String[] columnsArray=line1.split(",");	
        
        for(String kk:columnsArray) {
        	System.out.println("columnsArray........."+kk);
        }
        System.out.println("ColumnsArray........"+columnsArray.toString());
        try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
            for(int i=0;i<=4;i++) {
              line+= br.readLine()+","; 
            }
    		//System.out.println(line);
    		String[] arrayline=line.split(",");
    		 for(String kk:columnsArray) {
    	        	System.out.println("ArrayLine........."+kk);
    	        }
    		String [] afterSplitingByLastColumn=null;
    		if(line.contains(columnsArray[columnsArray.length-1])) {
            	afterSplitingByLastColumn= line.split(columnsArray[columnsArray.length-1]+",");
             }
    		
    		
            // System.out.println("after Spliting get values");
             for(String newAfterSpliting:afterSplitingByLastColumn) {
            	 System.out.println("lastcolumn....."+newAfterSpliting);
             }
            
             
             String neString=afterSplitingByLastColumn[1];
             System.out.println("..............................");
            System.out.println("nestring..."+neString);
    		 String[] updatedString=neString.split(",");
             for(String update:updatedString) {
            	
            int lengthOfcolumn=columnsArray.length;
           
            System.out.println("length of column"+lengthOfcolumn);
    		for(int j=0;j<=lengthOfcolumn;j++) {
            String onecolumn10rowsVal="";	    		
            for(int i=0;i<=2;i++) {
	              onecolumn10rowsVal+=updatedString[(lengthOfcolumn*i)+j];
	             
	    	}    	
            System.out.println("onecolumn10rowsvallll"+onecolumn10rowsVal);
            
           // System.out.println("onecolumn10rowsVal ::"+onecolumn10rowsVal.length());
    }}
    	
	   		String s="";  		
	    	//.out.println("mystring to find length :"+s);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	}
}
