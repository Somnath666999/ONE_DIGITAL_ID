package com.example.onedigitalid;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
     Button usersection;
     Button officersection;
     Button adminsection;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        usersection = findViewById(R.id.usersection);
        officersection = findViewById(R.id.officersection);
        adminsection = findViewById(R.id.adminsection);
        usersection.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityU();
            }
        });
        officersection.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityOLP();
            }
        });
        adminsection.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityAL();
            }
        });
    }
    public void openActivityU(){
        Intent intent8 = new Intent(this,Login_User.class);
        startActivity(intent8);
    }
    public void openActivityOLP(){
        Intent intent7 = new Intent(this,Officer_LogIn_Activity.class);
        startActivity(intent7);
    }
    public void openActivityAL(){
        Intent intent9 = new Intent(this,Admin_Log_In.class);
        startActivity(intent9);
    }
}