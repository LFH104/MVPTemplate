package ${fragmentPackageName};

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}View;
import ${presenterImplPackageName}.${pageName}PresenterImpl;
import ${fragmentPackageName}.base.BaseFragment;

import ${packageName}.R;



<#import "root://activities/MVPTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Fragment extends BaseFragment<${pageName}PresenterImpl> implements ${pageName}View{

    public static ${pageName}Fragment newInstance() {
        ${pageName}Fragment fragment = new ${pageName}Fragment();
        return fragment;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
        }
    }

    @Override
    protected void initInjector() {
        Dagger${pageName}Component.builder()
                .applicationComponent(getAppComponent())
                .${pageName}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }

    @Override
    public int getLayoutId() {
        return R.layout.${fragmentLayoutName};
    }

    @Override
    public void initData(Bundle savedInstanceState) {
    }

}
