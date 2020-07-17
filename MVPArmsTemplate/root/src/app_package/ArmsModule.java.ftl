package ${moudlePackageName};

<#if needActivity && needFragment>

<#elseif needActivity>

<#elseif needFragment>

</#if>

import dagger.Binds;
import dagger.Module;
import dagger.Provides;

import ${contractPackageName}.${pageName}Contract;



@Module
public abstract class ${pageName}Module {

    @Binds
    abstract ${pageName}Contract.Model bind${pageName}Model(${pageName}Model model);
}