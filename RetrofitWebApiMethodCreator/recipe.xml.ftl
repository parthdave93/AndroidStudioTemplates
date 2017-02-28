<?xml version="1.0"?>
<recipe>
<instantiate from="root/base/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/BasePresenter.java" />


<instantiate from="root/base/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/Presenter.java" />


<instantiate from="root/base/WebApiResponseInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/WebApiResponseInterface.java" />
</recipe>
