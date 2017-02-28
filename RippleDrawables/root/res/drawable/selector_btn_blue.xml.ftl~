<?xml version="1.0" encoding="utf-8"?>

<selector xmlns:android="http://schemas.android.com/apk/res/android">

    <item android:state_pressed="true">
        <shape android:shape="rectangle">

	<#if circularButton>
            <corners android:radius="@dimen/${DrawableName}_btn_radius"></corners>
	</#if>
            <solid android:color="@color/btn_${DrawableName}_selected"/>
        </shape>
    </item>

    <item>
        <shape android:shape="rectangle">

	<#if circularButton>
            <corners android:radius="@dimen/circular_btn_radius"></corners>
	</#if>
            <solid android:color="@color/btn_${DrawableName}"/>
        </shape>
    </item>
</selector>
