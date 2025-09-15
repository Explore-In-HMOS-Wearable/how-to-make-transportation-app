import { router } from '@kit.ArkUI';
import TimeZone from '../components/TimeZone';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State currentIndex: number = 1

  @Builder tabBuilder(title: string, targetIndex: number) {
    Column() {}.backgroundColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')

  }
  build() {
    RelativeContainer() {
      TimeZone()
      Column(){
        Image($r('app.media.icon'))
          .width(40)
          .height(40)
        Text($r('app.string.journey'))
          .fontSize(12)
          .fontWeight(FontWeight.Bold)
      }
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          router.pushUrl({ url: 'pages/TabPage' })
        })
    }
    .width('100%')
    .backgroundColor(Color.Black)
  }
}