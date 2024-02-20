package com.example.onedigitalid;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class creation_SectionActivity extends AppCompatActivity {
    Button createodicard;
    Button viewcardinfobutton;
    Button viewcarddgvsnbutton;
    Button cheakstetusbutton;
    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_creation_section);
        createodicard=findViewById(R.id.createodicard);
        viewcardinfobutton=findViewById(R.id.viewcardinfobutton);
        viewcarddgvsnbutton = findViewById(R.id.viewcarddgvsnbutton);
        cheakstetusbutton= findViewById(R.id.cheakstetusbutton);
        createodicard.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityCOC();
            }
        });
        viewcardinfobutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityVCI();
            }
        });
        viewcarddgvsnbutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityVC();
            }
        });
        cheakstetusbutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openActivityCS();
            }
        });
    }
    public void openActivityCOC(){
        Intent intent2= new Intent(this,Create_ODI_Card.class);
        startActivity(intent2);
    }
    public void openActivityVCI(){
        Intent intent3 = new Intent(this,View_Card_Info.class);
        startActivity(intent3);
    }
    public void openActivityVC(){
        Intent intent4 = new Intent(this,View_Card.class);
        startActivity(intent4);
    }
    public void openActivityCS(){
        Intent intent9 = new Intent(this,UserStetus.class);
        startActivity(intent9);
    }
}