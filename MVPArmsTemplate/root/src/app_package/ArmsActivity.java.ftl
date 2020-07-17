package ${ativityPackageName};


import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

import ${packageName}.R;


<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BaseActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public void setupActivityComponent(AppComponent appComponent) {
        Dagger${pageName}Component 
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this);
    }

    @Override
    public int initView(Bundle savedInstanceState) {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void initData(Bundle savedInstanceState) {

    }
}
