import { i18n } from '@kit.LocalizationKit';

@Component
export default struct TimeZone{
  build() {
    Text(this.getTimeZone())
      .fontSize(15)
      .fontWeight(FontWeight.Bold)
      .alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Top },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })
      .margin({
        top:40
      })
  }

  getTimeZone() {
    let locale = i18n.System.getSystemLocale();
    let timezone = i18n.getTimeZone().getID();
    let calendar = i18n.getCalendar(locale);
    calendar.setTimeZone(timezone);
    let hour = calendar.get('hour');
    let minute = calendar.get('minute');

    return hour + ':' + minute
  }
}