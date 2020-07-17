package ${ativityPackageName}

import android.content.Intent
import android.os.Bundle



import ${componentPackageName}.Dagger${pageName}Component
import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}View
import ${presenterImplPackageName}.${pageName}PresenterImpl

import ${packageName}.R


class ${pageName}Activity : BaseActivity<${pageName}PresenterImpl>() , ${pageName}View {

    override fun setupActivityComponent(appComponent:AppComponent) {
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

}
