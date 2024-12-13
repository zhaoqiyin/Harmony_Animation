import { SVG, SVGBase, SVGImageView } from '@ohos/svg';
import { GlobalContext } from '@ohos/svg/src/main/ets/components/GlobalContext';
import TitleBarComponent from '../view/TitleBarComponent';
import { common } from '@kit.AbilityKit';

@Entry
@Component
struct SvgPage {
  @State message: string = 'Hello World';
  model: SVGImageView.SVGImageViewModel = new SVGImageView.SVGImageViewModel();

  // public aboutToAppear() {
  //   this.model.setImageRawfile('app.media.ic_launcher_round')
  // }

  public getData() {
    let context = getContext(this) as common.UIAbilityContext;
    // let context: Context = GlobalContext.getContext().getObject("context") as Context;
    console.log("context.resourceManager = " + context.resourceManager)
    context.resourceManager.getRawFileContent('ic_launcher_round.svg', (error, value) => {
      if (error != null) {
        throw new Error("未找到rawfile下的svg")
      } else {
        let data = SVGBase.unit8ArrayToString(value);
        let svgBase = SVGBase.getFromString(data)
        this.model.setSVG(new SVG(svgBase))
        // this.model1.setFromString(data)
      }
    })
  }

  public aboutToAppear() {
    this.getData()
  }

  build() {
    Column() {
      TitleBarComponent({ title: "svg动画" })
      Stack() {
        SVGImageView({ model: this.model }).width('50%').height('50%') //avatarSvg
      }
    }
    .height('100%')
    .width('100%')
  }
}