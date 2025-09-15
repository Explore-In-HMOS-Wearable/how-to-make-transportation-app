import TimeZone from './TimeZone'

@Component
export default struct PaymentTab{

  build() {
  RelativeContainer(){
    TimeZone()
    Column(){
      Flex({justifyContent: FlexAlign.Start}){
        Row(){
          Image($r('app.media.start_location_icon'))
            .width(20)
            .height(20)
          Text($r('app.string.from_where'))
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Gray)
            .fontSize(12)
        }
      }
      .margin({
        left:40,
        right:40
      })
      Line()
        .height(1)
        .width('60%')
        .backgroundColor(Color.Gray)
        .margin({
          top: 8,
          bottom: 8
        })
      Flex({justifyContent: FlexAlign.Start}) {
        Row() {
          Image($r('app.media.end_location_icon'))
            .width(20)
            .height(20)
          Text($r('app.string.to_where'))
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Gray)
            .fontSize(12)
        }
      }
      .margin({
        left:40,
        right:40
      })
      Line()
        .height(1)
        .width('60%')
        .backgroundColor(Color.Gray)
        .margin({
          top: 8,
          bottom: 8
        })
      Flex({justifyContent: FlexAlign.Start}){
        Row(){
          Image($r('app.media.card_icon'))
            .width(20)
            .height(20)
          Text($r('app.string.card_info'))
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Gray)
            .fontSize(12)
        }
      }
      .margin({
        left:40,
        right:40
      })
    }
    .alignRules({
      center: { anchor: '__container__', align: VerticalAlign.Center },
      middle: { anchor: '__container__', align: HorizontalAlign.Center }
    })
  }
  .width('100%')
  .height('100%')
  .backgroundColor(Color.Black)
  }
}