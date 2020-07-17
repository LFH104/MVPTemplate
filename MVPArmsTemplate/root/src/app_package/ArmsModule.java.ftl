package ${moudlePackageName};

import ${presenterImplPackageName}.${pageName}PresenterImpl;
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

import dagger.Module;
import dagger.Provides;

@Module
public class ${pageName}Module {

    <#if needActivity && needFragment>
     private final ${pageName}Activity mView;

     public ${pageName}Module(${pageName}Activity mView) {
        this.mView = mView;
     }
    <#elseif needActivity>
     private final ${pageName}Activity mView;

     public ${pageName}Module(${pageName}Activity mView) {
        this.mView = mView;
     }
    <#elseif needFragment>
     private final ${pageName}Fragment mView;

     public ${pageName}Module(${pageName}Fragment mView) {
        this.mView = mView;
     }
    </#if>

    <#if needActivity && needFragment>
     @PerActivity
    <#elseif needActivity>
     @PerActivity
    <#elseif needFragment>
     @PerFragment
    </#if>
    @Provides
    public ${pageName}PresenterImpl provide${pageName}PresenterImpl(){
        return new ${pageName}PresenterImpl();
    }
}