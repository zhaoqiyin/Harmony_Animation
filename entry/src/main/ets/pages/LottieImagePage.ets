import lottie from '@ohos/lottie';
import { hilog } from '@kit.PerformanceAnalysisKit';
import TitleBarComponent from '../view/TitleBarComponent';

/**
 * lottie动画，参考https://ohpm.openharmony.cn/#/cn/detail/@ohos%2Flottie
 */
@Entry
@Component
struct LottieImagePage {
  private mainRenderingSettings: RenderingContextSettings = new RenderingContextSettings(true);
  private mainCanvasRenderingContext: CanvasRenderingContext2D =
    new CanvasRenderingContext2D(this.mainRenderingSettings);

  startLottieAnimation() {

    hilog.info(0x0000, 'testTag', '%{public}s', 'startLottieAnimation');
    const animationItem = lottie.loadAnimation({
      container: this.mainCanvasRenderingContext,
      renderer: 'canvas',
      loop: true,
      autoplay: false,
      name: '2016',                                // Animation name.
      // path: "common/lottie/4800-weather-partly-cloudy.json",
      path: "common/lottie/4793-weather-snow.json",
      // path: "common/lottie/home.json",
    });

  }

  build() {
    Column() {
      TitleBarComponent({ title: "lottie动画" })
      Canvas(this.mainCanvasRenderingContext)
        .width('150vp')
        .height('150vp')
        .onReady(() => {
          this.startLottieAnimation()
        })
      Button("play")
        .onClick(() => {
          lottie.play();
        })
      Button("stop")
        .onClick(() => {
          lottie.stop();
        })
        .margin({top: '20vp'})
    }
    .height('100%')
    .width('100%')
  }

  aboutToDisappear(): void {
    lottie.destroy()
  }
}