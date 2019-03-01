package com.nt.text;

public class ThreadDemo implements Runnable {

	   Thread t;
	   ThreadDemo() {
	    
	      // thread created
	      t = new Thread(this, "Admin Thread");
	     
	      // prints thread created
	      System.out.println("thread  = " + t);
	      
	      // this will call run() function
	      System.out.println("Calling run() function... ");
	      
	      t.start();
	   }

	   public void run() {
	      System.out.println("Inside run()function");
	      
	   }

	   public static void main(String args[]) {
	      new ThreadDemo();
	      System.out.println("after thread execution");
	   }
	} 