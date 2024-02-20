package com.example.onedigitalid;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Admin_Request extends AppCompatActivity {
    Button requestview;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_admin_request);
        requestview = findViewById(R.id.requestview);
        requestview.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityUDV();
            }
        });
    }
    public void openActivityUDV(){
        Intent intent10 = new Intent(this,UserDetails.class);
        startActivity(intent10);
    }
}