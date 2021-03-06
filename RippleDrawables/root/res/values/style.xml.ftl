<?xml version="1.0" encoding="utf-8"?>
<resources>
<#if mainButtonStyle>
 <style name="Button">
        <item name="android:padding">@dimen/dp_15</item>
        <item name="android:textSize">@dimen/sp_18</item>
        <item name="android:clickable">true</item>
	<!-- font name -->
        <!--<item name="typeface">ProximaNovaSemibold</item>-->
        <item name="android:layout_gravity">center_horizontal</item>
        <item name="android:gravity">center_horizontal</item>
        <item name="android:paddingLeft">@dimen/dp_30</item>
        <item name="android:paddingRight">@dimen/dp_30</item>
        <item name="android:paddingStart">@dimen/dp_30</item>
        <item name="android:paddingEnd">@dimen/dp_30</item>
        <item name="android:paddingTop">@dimen/dp_10</item>
        <item name="android:paddingBottom">@dimen/dp_10</item>
    </style>
</#if>
    <style name="Button.${DrawableName}">
        <item name="android:background">@drawable/${DrawableName}</item>
        <item name="android:textColor">@android:color/white</item>
    </style>
</resources>
