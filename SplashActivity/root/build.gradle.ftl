<#if multidex || databinding>
android{
   <#if multidex>
    defaultConfig {
        multiDexEnabled true
    }
   </#if>
   <#if databinding>
	databinding {
          enabled = true
        }
   </#if>

}
</#if>



dependencies {
<#if retrofitlibrary>
 compile 'com.squareup.retrofit2:retrofit:2.1.0'
 compile 'com.squareup.retrofit2:converter-gson:2.1.0'
 compile 'com.squareup.okhttp3:logging-interceptor:3.3.1'
</#if>
<#if picasso>
 compile 'com.squareup.picasso:picasso:2.5.2'
</#if>
<#if glide>
  compile 'com.github.bumptech.glide:glide:3.7.0'
</#if>
<#if glidetranformations>
    compile 'jp.wasabeef:glide-transformations:2.0.1'
    // If you want to use the GPU Filters
    compile 'jp.co.cyberagent.android.gpuimage:gpuimage-library:1.3.0'
</#if>
<#if multidex>
    compile 'com.android.support:multidex:1.0.0'
</#if>
<#if butterknife>
    compile 'com.jakewharton:butterknife:8.4.0'
    annotationProcessor 'com.jakewharton:butterknife-compiler:8.4.0'
</#if>
<#if rxjava>
	<#if retrofitlibrary>
		 compile 'com.squareup.retrofit2:adapter-rxjava:2.1.0'
	</#if>
      compile 'io.reactivex:rxandroid:0.24.0'
    compile 'com.jakewharton.rxbinding:rxbinding:0.4.0'
    compile 'com.jakewharton.rxbinding:rxbinding-support-v4:0.4.0'
</#if>
}
