let stars = () => {
  console.log('五角星', '☆')
  console.log('五角星', '☆☆')
  console.log('五角星', '☆☆☆')
  console.log('五角星', '☆☆☆☆')
  console.log('五角星', '☆☆☆☆☆')
}
stars()
let buy=(price:number,weight:number)=>{
  let result:number=price*weight
  return result
}
let apple:number=buy(2,3)
console.log('苹果', apple)
let banana:number=buy(2,3)
console.log('香蕉', banana)

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