import FirstTab from '../components/FirstTab';
import PaymentTab from '../components/PaymentTab';
import TimeZone from '../components/TimeZone';

@Entry
@Component
struct TabPage {
  @State currentIndex: number = 1

  @Builder tabBuilder(title: string, targetIndex: number) {
    Column() {}.backgroundColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
  }

  build() {
    RelativeContainer() {
      TimeZone()
      Column(){
        Swiper(){
          FirstTab()
          PaymentTab()
        }
        .backgroundColor(Color.Black)
      }
      .alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Center },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })
    }.width('100%')
  }
}