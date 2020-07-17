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

@PerActivity
@Component(dependencies = ApplicationComponent.class, modules = ${pageName}Module.class)
public interface ${pageName}Component {
    void inject(${pageName}Activity activity);
}