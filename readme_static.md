仅针对API 9的 har开发及引用

har开发
https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/har-package-0000001573432125-V2
开发及引用静态共享包
https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/creating_har_api9-0000001518082393-V2



har开发注意事项：
1.HAR不支持在配置文件中声明abilities、extensionAbilities组件
2.HAR不支持在配置文件中声明pages页面(带@Entry的)。
3.HAR不支持在build-profile.json5文件的buildOption中配置worker。
4.FA模型与Stage模型的HAR不支持相互引用。
5.HAR包自身的构建打包不支持本地的依赖项（本地的har包）。
6.Stage模型的HAR，不能引用AppScope内的内容。在编译构建时AppScope中的内容不会打包到HAR中，导致HAR资源引用失败。
7.HAR模块编译打包时会把资源打包到HAR中。在编译构建HAP时，DevEco Studio会从HAP模块及依赖的模块中收集资源文件，
    如果不同模块下的资源文件出现重名冲突时，DevEco Studio会按照以下优先级进行覆盖（优先级由高到低）：
    AppScope（仅API9的Stage模型支持）。
    HAP包自身模块。
    依赖的HAR模块，如果依赖的多个HAR之间有资源冲突，会按照依赖顺序进行覆盖（依赖顺序在前的优先级较高）。
8.HAR不同于HAP，不能独立安装运行在设备上，只能作为应用模块的依赖项被引用。
9.开发完库模块后，选中模块名，然后通过DevEco Studio菜单栏的Build > Make Module ${libraryName}进行编译构建，生成HAR,
    输出目录为该模块目录下的 build\default\outputs\default\xxxx.har
10.添加到.ohpmignore文件的文件及目录会被过滤，不会打包到HAR中。
11.多个hap 使用 har 进行资源和代码共享，会导致包体积较大，且有重复多份公共资源和代码重复打包到应用中，此时因使用HSP



har包引用
第一种：发布har到三方库，再从远程仓库导入
第二种：直接导入本地har模块源码
第三种：将源码编译为har，再从本地导入
以上都需要在 entry 模块的 oh-package.json5 或者 工程下的oh-package.json5 中声明dependencies依赖







