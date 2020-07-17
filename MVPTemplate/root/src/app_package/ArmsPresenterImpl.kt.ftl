package ${presenterImplPackageName}

import android.app.Application


<#if needActivity && needFragment>

<#elseif needActivity>

<#elseif needFragment>

</#if>


import javax.inject.Inject

import ${contractPackageName}.${pageName}Contract


<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
class ${pageName}PresenterImpl
@Inject
constructor(model: ${pageName}Contract.Model, rootView: ${pageName}Contract.View) :
BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model,rootView) {
    @Inject
    lateinit var mErrorHandler:RxErrorHandler
    @Inject
    lateinit var mApplication:Application
    @Inject
    lateinit var mImageLoader:ImageLoader
    @Inject
    lateinit var mAppManager:AppManager


    override fun onDestroy() {
          super.onDestroy();
    }
}
