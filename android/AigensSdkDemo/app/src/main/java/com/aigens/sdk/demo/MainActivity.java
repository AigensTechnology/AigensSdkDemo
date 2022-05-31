package com.aigens.sdk.demo;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        Button button = (Button) findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View arg0) {

                System.err.println("Button Clicked");
                openUrl();
            }
        });

    }

    private void openUrl(){

        Activity act = this;
        Intent intent = new Intent(act, WebContainerActivity.class);

        String url = "https://scantest.aigens.com/scan?code=c3RvcmU9NTAwJnNwb3Q9MSZwYWdlPWJ5b2Q=";

        intent.putExtra("URL", url);
        act.startActivity(intent);

    }


}