<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<#import "root://activities/MVPTemplate/dagger2_macros.ftl" as dagger2>
<recipe>
<@kt.addAllKotlinDependencies />
<@dagger2.addAllKaptDependencies />
<#if needActivity>
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</#if>

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if needFragment && generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>

<#if needAdapter && generateAdapterLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${adapterLayoutName}.xml" />
</#if>


<#if needActivity>
    <instantiate from="root/src/app_package/ArmsActivity.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.${ktOrJavaExt}" />
</#if>

<#if needFragment>
    <instantiate from="root/src/app_package/ArmsFragment.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.${ktOrJavaExt}" />
</#if>

<#if needAdapter>
    <instantiate from="root/src/app_package/ArmsAdapter.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(adapterPackageName)}/${pageName}Adapter.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(adapterPackageName)}/${pageName}Adapter.${ktOrJavaExt}" />
</#if>

<#if needContract>
    <instantiate from="root/src/app_package/ArmsView.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}View.${ktOrJavaExt}" />
</#if>

<#if needPresenterImpl>
    <instantiate from="root/src/app_package/ArmsPresenterImpl.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterImplPackageName)}/${pageName}PresenterImpl.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterImplPackageName)}/${pageName}PresenterImpl.${ktOrJavaExt}" />
</#if>


<#if needPresenter>
    <instantiate from="root/src/app_package/ArmsPresenter.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.${ktOrJavaExt}" />
</#if>


<#if needDagger>
    <instantiate from="root/src/app_package/ArmsComponent.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(componentPackageName)}/${pageName}Component.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/ArmsModule.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(moudlePackageName)}/${pageName}Module.${ktOrJavaExt}" />

</#if>

</recipe>
