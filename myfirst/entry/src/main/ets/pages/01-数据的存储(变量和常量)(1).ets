//console.log('消息说明','打印的内容')
// console.log('我说','学鸿蒙,来黑马')

let title: string = '巨无霸汉堡'
console.log('字符串title', title)
let age: number = 18
console.log('年纪age', age)
let isLogin: boolean = true
console.log('是否登录成功', isLogin)
age = 80
console.log('年纪age', age)
const PI: number = 3.14
const companyName: string = '华为'
console.log('公司名:', companyName)
console.log('PI:', PI)

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}