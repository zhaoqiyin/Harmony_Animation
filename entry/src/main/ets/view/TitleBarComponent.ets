/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { router } from '@kit.ArkUI';

/**
 * The title bar component.
 */
@Component
export default struct TitleBarComponent {
  isBack: boolean = true;
  title = "";
  build() {
    Row() {
      if (this.isBack) {
        Image($r('app.media.ic_public_back'))
          .height("24vp")
          .width("24vp")
          .margin({ right: "4vp" })
          .onClick(() => {
            router.back();
          })
      }

      Text(this.title)
        .fontColor(Color.Black)
        .fontSize($r('sys.float.ohos_id_text_size_headline8'))
        .fontWeight(FontWeight.Medium)
        .margin({ left: "8vp" })
    }
    .width("100%")
    .height("7.2%")
    .padding({ left: "16vp" })
  }
}