package com.nt.text;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import com.mkyong.service.FlatFileService;

public class TestClass2 {

	public static void main(String[] args) throws IOException {
        String splitBy = ",";
    BufferedReader br = new BufferedReader(new FileReader(FlatFileService.locations+"rwetr0.csv"));
    String line = "";
    System.out.println(line);
    for(int i=0;i<=13;i++) {
        line+= br.readLine()+","; 
      }
    System.out.println(line);
    br.close();

}
}