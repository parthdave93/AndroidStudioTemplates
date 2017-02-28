<?xml version="1.0"?>
<recipe>
 <instantiate from="root/FBLoginActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/FBLoginActivity.java" />
 <instantiate from="root/FacebookLoginResponse.java"
                   to="${escapeXmlAttribute(srcOut)}/FacebookLoginResponse.java" />
<merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
<merge from="root/FBLoginClickActivity.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/${parentActivityClass}.java" />
<merge from="root/strings.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>
<merge from="root/style.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/style.xml"/>
  <merge from="root/build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</recipe>
