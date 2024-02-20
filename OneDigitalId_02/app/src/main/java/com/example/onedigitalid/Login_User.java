package com.example.onedigitalid;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Login_User extends AppCompatActivity {
    EditText usernamebox;
    EditText userpassword;
    Button userloginButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login_user);
        usernamebox = findViewById(R.id.usernamebox);
        userpassword = findViewById(R.id.userpassword);
        userloginButton = findViewById(R.id.regsubmit);

        userloginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (usernamebox.getText().toString().equals("somnath") && userpassword.getText().toString().equals("9735")) {
                    Toast.makeText(Login_User.this, "Login Successful!", Toast.LENGTH_SHORT).show();
                    openActivityCRA();
                } else {
                    Toast.makeText(Login_User.this, "Login Failed!", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void openActivityCRA() {
        Intent intent1 = new Intent(this, creation_SectionActivity.class);
        startActivity(intent1);
    }

    public void openActivity(View view) {
        Toast.makeText(this, "Successful", Toast.LENGTH_SHORT).show();
        Intent intent = new Intent(this, RegistationActivity.class);
        startActivity(intent);
    }
}