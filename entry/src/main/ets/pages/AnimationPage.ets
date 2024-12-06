import TitleBarComponent from '../view/TitleBarComponent';

@Entry
@Component
struct AnimationPage {
  @State widthSize: number = 250
  @State heightSize: number = 100
  @State rotateAngle: number = 0
  @State flag: boolean = true
  @State changeBgColor: boolean = false
  @State mOpacity: number = 1.0
  @State mScaleX: number = 1.0
  @State mScaleY: number = 1.0
  @State mTranslateX: number = 0.0
  @State mTranslateY: number = 1.0


  build() {
    Column() {
      TitleBarComponent({ title: "属性动画" })
      Button('change rotate angle')
        .onClick(() => {
          this.rotateAngle = 90 - this.rotateAngle
        })
        .margin(60)
        .rotate({ angle: this.rotateAngle })
        .animation({
          duration: 1200,
          curve: Curve.Friction,
          delay: 500,
          iterations: 1, // 设置-1表示动画无限循环
          playMode: PlayMode.Alternate,
          expectedFrameRateRange: {
            min: 20,
            max: 120,
            expected: 90,
          }
        })
      Button('change backgroundColor')
        .onClick(() => {
          this.changeBgColor = !this.changeBgColor
        })
        .backgroundColor(this.changeBgColor ? "#ff0000" : "#0000ff" )
        .margin(5)
        .animation({
          duration: 1200,
          curve: Curve.Friction,
          delay: 500,
          iterations: 1, // 设置-1表示动画无限循环
          playMode: PlayMode.Alternate,
          expectedFrameRateRange: {
            min: 20,
            max: 120,
            expected: 90,
          }
        })
      Button('change opacity')
        .onClick(() => {
          this.mOpacity = 1.1 - this.mOpacity
        })
        .margin(5)
        .opacity(this.mOpacity)
        .animation({
          duration: 1200,
          curve: Curve.Friction,
          delay: 500,
          iterations: 1, // 设置-1表示动画无限循环
          playMode: PlayMode.Alternate,
          expectedFrameRateRange: {
            min: 20,
            max: 120,
            expected: 90,
          }
        })
      Button('change scale')
        .onClick(() => {
          this.mScaleX = 3 - this.mScaleX
          this.mScaleY = 3 - this.mScaleY
        })
        .margin(20)
        .scale({x:this.mScaleX,y:this.mScaleY,z:1,centerX:'50%',centerY:'50%'})
        .animation({
          duration: 1200,
          curve: Curve.Friction,
          delay: 500,
          iterations: 1, // 设置-1表示动画无限循环
          playMode: PlayMode.Alternate,
          expectedFrameRateRange: {
            min: 20,
            max: 120,
            expected: 90,
          }
        })
      Button('change translate')
        .onClick(() => {
          this.mTranslateX = 100 - this.mTranslateX
          this.mTranslateY = 100 - this.mTranslateY
        })
        .margin(5)
        .translate({x: this.mTranslateX, y: this.mTranslateY})
        .animation({
          duration: 1200,
          curve: Curve.Friction,
          delay: 500,
          iterations: 1, // 设置-1表示动画无限循环
          playMode: PlayMode.Alternate,
          expectedFrameRateRange: {
            min: 20,
            max: 120,
            expected: 90,
          }
        })
      Button('change size')
        .onClick(() => {
          if (this.flag) {
            this.widthSize = 150
            this.heightSize = 60
          } else {
            this.widthSize = 250
            this.heightSize = 100
          }
          this.flag = !this.flag
        })
        .margin({top: 110})
        .width(this.widthSize)
        .height(this.heightSize)
        .animation({
          duration: 2000,
          curve: Curve.EaseOut,
          iterations: 1,
          playMode: PlayMode.Normal
        })
    }
  }
}

