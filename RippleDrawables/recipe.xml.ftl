<?xml version="1.0"?>
<recipe>
<merge from="root/res/drawable/selector_btn_blue.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/drawable/${DrawableName}.xml" />
<merge from="root/res/drawable-v21/selector_btn_blue.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/drawable-v21/${DrawableName}.xml" />
<merge from="root/res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
<merge from="root/res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
<merge from="root/res/values/style.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
<open file="${escapeXmlAttribute(resOut)}/values/styles.xml" />
</recipe>
