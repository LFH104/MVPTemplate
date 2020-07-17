package ${ativityPackageName};

import android.os.Bundle;

import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}View;
import ${presenterImplPackageName}.${pageName}PresenterImpl;
import ${ativityPackageName}.base.BaseActivity;

import ${packageName}.R;

import javax.inject.Inject;

import butterknife.BindView;

<#import "root://activities/MVPTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BaseActivity<${pageName}PresenterImpl> implements ${pageName}View{

    @Override
    protected void initInjector() {
        Dagger${pageName}Component.builder()
                .applicationComponent(getAppComponent())
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }

    @Override
    public int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void initData(Bundle savedInstanceState) {
    }
}
