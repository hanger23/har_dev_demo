import { MainPage } from '@ohos/static_library1'


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column({ space: 10 }) {
        MainPage()

        Text(this.message)
          .fontSize(50)
          .fontColor($r('app.color.yello'))
          .fontWeight(FontWeight.Bold)

        Image($r('app.media.img1'))
      }
      .width('100%')
    }
    .height('100%')
  }
}