/**
 * X86架构的模拟器不支持播放svga动画，暂时未实现
 */
import TitleBarComponent from '../view/TitleBarComponent';

@Entry
@Component
struct SvgaPage {
  @State message: string = 'X86架构的模拟器不支持播放svga动画，暂时未实现';

  build() {
    Column() {
      TitleBarComponent({ title: "svga动画" })
      RelativeContainer() {
        Text(this.message)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .alignRules({
            center: { anchor: '__container__', align: VerticalAlign.Center },
            middle: { anchor: '__container__', align: HorizontalAlign.Center }
          })
      }
      /**
       * 下载安装
       * ohpm install @tb-open/svga
       * controller为非必传。需要修改播放参数 或者进行手动操作时 需传入
       * url支持resource/远程url/沙箱路径(完整的沙箱路径)
       */
      // SvgaPlayer({
      //   url: $r('app.media.matteBitmap_1'),
      //   controller: this.controller
      // })
      //   .width(300)
      //   .aspectRatio(0.5)
    }
    .height('100%')
    .width('100%')
  }
}