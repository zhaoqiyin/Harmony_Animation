import TitleBarComponent from '../view/TitleBarComponent';

@Entry
@Component
struct GifImagePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      TitleBarComponent({ title: "gif动画" })
      Image($r('app.media.zaoAn'))
        .width('100vp')
        .height('100vp')
    }
    .height('100%')
    .width('100%')
  }
}