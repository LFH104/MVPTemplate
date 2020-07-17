package ${presenterImplPackageName};

import com.upplus.mvp.mvp.XPresent;
import com.upplus.mvp.retrofit.NetError;
<#if needActivity && needFragment>
import ${ativityPackageName}.${pageName}Activity;
<#elseif needActivity>
import ${ativityPackageName}.${pageName}Activity;
<#elseif needFragment>
import ${fragmentPackageName}.${pageName}Fragment;
</#if>
import ${presenterPackageName}.${pageName}Presenter;

<#if needActivity && needFragment>
public class ${pageName}PresenterImpl extends XPresent<${pageName}Activity> implements ${pageName}Presenter{
<#elseif needActivity>
public class ${pageName}PresenterImpl extends XPresent<${pageName}Activity> implements ${pageName}Presenter{
<#elseif needFragment>
public class ${pageName}PresenterImpl extends XPresent<${pageName}Fragment> implements ${pageName}Presenter{
</#if>
}
