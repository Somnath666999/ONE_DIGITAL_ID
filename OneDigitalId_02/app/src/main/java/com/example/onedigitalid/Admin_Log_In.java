package com.example.onedigitalid;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Admin_Log_In extends AppCompatActivity {
    Button admin_login;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_admin_log_in);
        admin_login = findViewById(R.id.admin_login);
        admin_login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                openActivityAR();
            }
        });
    }
    public void openActivityAR(){
        Intent intent6= new Intent(this,Admin_Request.class);
        startActivity(intent6);
    }

}