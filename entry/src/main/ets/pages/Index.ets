// xxx.ets
import { router } from '@kit.ArkUI';
import { hilog } from '@kit.PerformanceAnalysisKit';


@Entry
@Component
struct ParticleExample {
  @State message: string = 'Hello World';
  private format: string = `%{public}s, %{public}s`;

  build() {
    Column() {
      Button("属性动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/AnimationPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("显示动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/AnimateToPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("转场动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/TransitionPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("路径动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/MotionPathPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("模态转场")
        .onClick(() => {
          router.pushUrl({
            url: "pages/BindContentCoverPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("粒子动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/ParticlePage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("gif动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/GifImagePage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("帧动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/FrameAnimatorPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("lottie动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/LottieImagePage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
      Button("svga动画")
        .onClick(() => {
          router.pushUrl({
            url: "pages/SvgaPage"
          }).catch((error: Error) => {
            hilog.info(0xFF00, "" + error.message, this.format);
          })
        })
        .margin({top: "20vp"})
    }
    .alignItems(HorizontalAlign.Center)
    .width("100%")

  }
}
