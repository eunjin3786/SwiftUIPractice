# SwiftUI 🎁

처음 프로젝트를 만들면 이렇게 구성되어있다.
<img width="1295" alt="스크린샷 2019-12-15 오전 1 47 12" src="https://user-images.githubusercontent.com/9502063/70851779-080e9300-1edd-11ea-8663-2d48a8271a82.png">

프리뷰에 나오는 디바이스를 바꾸고 싶으면 시뮬레이터를 바꿔주면 된다. 
<img width="1334" alt="스크린샷 2019-12-15 오전 1 49 12" src="https://user-images.githubusercontent.com/9502063/70851785-19579f80-1edd-11ea-8f71-507e3e9c2cd1.png">


Stack 개념 
```swift 
struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
```

저 코드에는 이렇게 return이 생략되어있다. 

```swift 
struct ContentView: View {
    var body: some View {
        return Text("Hello, World!")
    }
}
```

그래서 하나의 객체를 return해줘야하기때문에 Stack 이라는 개념이 필요하다. 

스택은 `VStack` 과 `HStack`이 두가지가 있으며 

VStack은 세로 정렬, HStack은 가로 정렬을 해준다. 

<img width="1295" alt="스크린샷 2019-12-15 오전 1 47 12" src="https://user-images.githubusercontent.com/9502063/70851841-df3acd80-1edd-11ea-9a45-c950f1440d2b.png">
<img width="1276" alt="스크린샷 2019-12-15 오전 1 47 19" src="https://user-images.githubusercontent.com/9502063/70851842-df3acd80-1edd-11ea-8888-af4354430f23.png">

