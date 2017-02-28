<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <instantiate from="root/res/layout/activity_splash.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>
<merge from="root/AndroidManifestPermissions.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/res/values/attrs.xml"
             to="${escapeXmlAttribute(resOut)}/values/attrs.xml" />
    <merge from="root/res/values/colors.xml"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <merge from="root/res/values/styles.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
  <merge from="root/build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
<!--<merge from="root/proguard-rules.pro.ftl"
             to="${escapeXmlAttribute(projectOut)}/proguard-rules.pro" />-->

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/${layoutName}.xml" />
</recipe>
