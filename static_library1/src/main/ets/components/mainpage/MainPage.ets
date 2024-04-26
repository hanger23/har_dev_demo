@Component
export struct MainPage {
  @State message: string = '这是来自 static_library1 的组件'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Red)
      }
      .width('100%')
    }
  }
}
