package ${componentPackageName}

import dagger.Component


import ${moudlePackageName}.${pageName}Module

<#if needActivity && needFragment>

import ${ativityPackageName}.${pageName}Activity
import ${fragmentPackageName}.${pageName}Fragment
<#elseif needActivity>

import ${ativityPackageName}.${pageName}Activity
<#elseif needFragment>

import ${fragmentPackageName}.${pageName}Fragment
</#if>


<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
@Component(modules = arrayOf(${pageName}Module::class),dependencies = arrayOf(AppComponent::class))
interface ${pageName}Component {
  <#if needActivity && needFragment>
	fun inject(activity:${pageName}Activity)
	fun inject(fragment:${pageName}Fragment)
  <#elseif needActivity || needFragment>
    fun inject(<#if needFragment>fragment:${pageName}Fragment<#else>activity:${pageName}Activity</#if>)
  </#if>
}
