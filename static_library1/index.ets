//Index.ets文件是HAR导出声明文件的入口，HAR需要导出的接口，统一在Index.ets文件中导出。
//也可以自定义入口文件，需要在 oh-package.json5 的 main 配置

export { MainPage } from './src/main/ets/components/mainpage/MainPage'

export { Log, func, func2 } from './src/main/ts/test'

// export { nativeAdd } from './src/main/ts/nativeTest'