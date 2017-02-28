package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;


import org.json.JSONObject;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;

public class ${parentActivityClass} extends AppCompatActivity {

    

    public void onFacebookLogin(){
        startActivityForResult(new Intent(this, FBLoginActivity.class),RC_FACEBOOK);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode == RC_FACEBOOK){
            Bundle extras = data.getExtras();
            if(extras==null)
                return;
            if(extras.getSerializable("fbResult")!=null){
                facebookLoginResponse = (FacebookLoginResponse) extras.getSerializable("fbResult");
               
                
            }
        }
    }

*/
}
