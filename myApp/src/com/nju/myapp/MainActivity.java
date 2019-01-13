package com.nju.myapp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

@TargetApi(Build.VERSION_CODES.GINGERBREAD)
@SuppressLint("NewApi")
public class MainActivity extends Activity {
   //private static String url = "http://114.212.87.161:8080/myServer/user/login.do?";
   //private final String url_constant = "http://114.212.87.161:8080/myServer/user/login.do?";
   //private EditText  username=null;
   //private EditText  password=null;
   public static String USERNAME = "";
   @SuppressLint("NewApi")
   private TextView welcome;
   private Button login;
   private Button register;
   private Button scenicSelect;
   private Button scenicInsert;
   private Button scenicDisplay;
   private Button travelRecord;
   private Button shareExperience;
   private Button scenicEvaluation;
   private Button addFriend;
   @SuppressLint("NewApi")
@Override
   protected void onCreate(Bundle savedInstanceState) {
      super.onCreate(savedInstanceState);
      setContentView(R.layout.activity_main);
      login = (Button)findViewById(R.id.button1);
      welcome = (TextView)findViewById(R.id.textView1);
      register = (Button)findViewById(R.id.button2);
      scenicSelect = (Button)findViewById(R.id.button3);
      scenicInsert = (Button)findViewById(R.id.button4);
      scenicDisplay = (Button)findViewById(R.id.button5);
      travelRecord = (Button)findViewById(R.id.button6);
      shareExperience = (Button)findViewById(R.id.button7);
      scenicEvaluation = (Button)findViewById(R.id.button8);
      addFriend = (Button)findViewById(R.id.button9);
      setListener();
   }
   /**
   * 设置事件的监听器的方法
   */
   private void setListener() {
      login.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, login.class);
        	  startActivity(intent);
          }
      });
      register.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, register.class);
        	  startActivity(intent);
          }
      });
      scenicSelect.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, scenicselect.class);
        	  startActivity(intent);
          }
      });
      scenicInsert.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, scenicinsert.class);
        	  startActivity(intent);
          }
      });
      scenicDisplay.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, scenicdisplay.class);
        	  startActivity(intent);
          }
      });
      travelRecord.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, travelrecord.class);
        	  startActivity(intent);
          }
      });
      shareExperience.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, shareexperience.class);
        	  startActivity(intent);
          }
      });
      scenicEvaluation.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, scenicevaluation.class);
        	  startActivity(intent);
          }
      });
      addFriend.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View v) {
        	  Intent intent = new Intent(MainActivity.this, addfriend.class);
        	  startActivity(intent);
          }
      });
   }
   
   @Override
   public boolean onCreateOptionsMenu(Menu menu) {
      // Inflate the menu; this adds items to the action bar if it is present.
      getMenuInflater().inflate(R.menu.menu, menu);
      return true;
   }

}