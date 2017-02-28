package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
import android.content.Intent;
import android.os.Handler;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends ${superClass} {

    private int SPLASH_TIME_OUT = 1000;

    private boolean isAlreadyPaused = false, isChangeScreenAlreadyRequested = false;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
<#include "../../../../common/jni_code_usage.java.ftl">

	 new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                isChangeScreenAlreadyRequested = true;
                if (!isAlreadyPaused && !isFinishing()) {
                     changeScreen();
                }
            }
        }, SPLASH_TIME_OUT);
    }


public void changeScreen() {
                Intent i = new Intent(${activityClass}.this, LoginActivity.class);
                startActivity(i);
                finish();
    }


    @Override
    protected void onPause() {
        super.onPause();
        isAlreadyPaused = true;
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (isAlreadyPaused) {
            isAlreadyPaused = false;
            changeScreen();
        }
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
