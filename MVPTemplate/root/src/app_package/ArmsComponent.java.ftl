package ${componentPackageName};

import ${moudlePackageName}.${pageName}Module;
<#if needActivity && needFragment>
import ${packageName}.injector.PerActivity;
import ${ativityPackageName}.${pageName}Activity;
<#elseif needActivity>
import ${packageName}.injector.PerActivity;
import ${ativityPackageName}.${pageName}Activity;
<#elseif needFragment>
import ${packageName}.injector.PerFragment;
import ${fragmentPackageName}.${pageName}Fragment;
</#if>


import dagger.Component;
<#if needActivity && needFragment>
 @PerActivity
<#elseif needActivity>
 @PerActivity
<#elseif needFragment>
 @PerFragment
 </#if>
@Component(dependencies = ApplicationComponent.class, modules = ${pageName}Module.class)
public interface ${pageName}Component {
   <#if needActivity && needFragment>
    void inject(${pageName}Activity activity);
   <#elseif needActivity>
    void inject(${pageName}Activity activity);
   <#elseif needFragment>
    void inject(${pageName}Fragment fragment);
   </#if>
}