package ${ativityPackageName}

import android.content.Intent
import android.os.Bundle

import com.jess.arms.base.BaseActivity
import com.jess.arms.di.component.AppComponent
import com.jess.arms.utils.ArmsUtils

import ${componentPackageName}.Dagger${pageName}Component
import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

import ${packageName}.R



/**
 * 如果没presenter 直接泛型Ipresenter
 */
class ${pageName}Activity : BaseActivity<${pageName}Presenter>() , ${pageName}Contract.View {

    override fun setupActivityComponent(ppComponent:AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(${pageName}Module(this))
                .build()
                .inject(this)
    }


    override fun initView(savedInstanceState:Bundle?):Int {
              return R.layout.${activityLayoutName} //如果你不需要框架帮你设置 setContentView(id) 需要自行设置,请返回 0
    }



    override fun initData(savedInstanceState:Bundle?) {

    }


    override fun showLoading() {

    }

    override fun hideLoading() {

    }

    override fun showMessage(message:String) {
        ArmsUtils.snackbarText(message)
    }
    override fun launchActivity(intent:Intent) {
        ArmsUtils.startActivity(intent)
    }

    override fun killMyself() {
        finish()
    }
}