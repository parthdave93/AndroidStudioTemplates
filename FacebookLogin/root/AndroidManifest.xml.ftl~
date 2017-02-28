<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
	<meta-data
            android:name="com.facebook.sdk.ApplicationId"
            android:value="@string/facebook_app_id"/>

        <provider android:authorities="com.facebook.app.FacebookContentProvider${FacebookAppId}"
                  android:name="com.facebook.FacebookContentProvider"
                  android:exported="true" />
         <activity
            android:name="${packageName}.FBLoginActivity"
            android:theme="@style/AppThemeTransperent"
            android:windowSoftInputMode="stateHidden"
            android:screenOrientation="portrait">
        </activity>
    </application>

</manifest>
