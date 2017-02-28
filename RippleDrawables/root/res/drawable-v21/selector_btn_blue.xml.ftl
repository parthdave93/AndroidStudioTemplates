<?xml version="1.0" encoding="utf-8"?>
<ripple xmlns:android="http://schemas.android.com/apk/res/android"
        android:color="#80000000">
    <item>
        <shape>
            <solid android:color="@color/btn_${DrawableName}"/>
	<#if circularButton>
            <corners android:radius="@dimen/${DrawableName}_btn_radius"/>
	</#if>
        </shape>
    </item>
</ripple>
