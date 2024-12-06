/**
 * 路径动画
 */
import TitleBarComponent from '../view/TitleBarComponent'

@Entry
@Component
struct MotionPathPage {
  @State toggle: boolean = true

  build() {
    Column() {
      TitleBarComponent({ title: "路径动画" })
      Button('click me')
        // 执行动画：从起点移动到(300,200)，再到(300,500)，再到终点
        .motionPath({ path: 'Mstart.x start.y L300 200 L300 500 Lend.x end.y', from: 0.0, to: 1.0, rotatable: false })
        .onClick(() => {
          animateTo({ duration: 4000, curve: Curve.Linear }, () => {
            this.toggle = !this.toggle // 通过this.toggle变化组件的位置
          })
        })
    }.width('100%').height('100%').alignItems(this.toggle ? HorizontalAlign.Start : HorizontalAlign.Center)
  }
}