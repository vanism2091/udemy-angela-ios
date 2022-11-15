
## 165. Step 2: UIPickerView Functionality

- UILabel, UIPickerView connect
- UIPickerView DataSource
  - the num of components: column
  - the num of rows: row
- UIPickerView Delegate
  - row title
  - didSelectedRow

## 166. Introducing coinapi.io

coinApi 는 header에 api key를 넣어 권한을 확인한다. verification 한다..? 한국어로 모라하지..?
근데 url 뒤에 apikey="" < params로도 전달 가능

## 167. Step 3: Make the API Request

CoinAPI Docs

- <https://docs.coinapi.io/#md-docs>
- <https://docs.coinapi.io/#exchange-rates>

Apple Docs

- URLSession
  - <https://developer.apple.com/documentation/foundation/urlsession>

나는 URLRequest로 header를 따로 설정하는 식으로 진행해볼거야.

- URLRequest
  - <https://stackoverflow.com/questions/58380617/how-to-call-rest-full-api-by-providing-headers-in-swift>
  - <https://developer.apple.com/documentation/foundation/urlrequest>

task resume을 잊지 말자 :)
task completion
    - error check
  
## 168. Step 4: Parse the JSON Data

- Define Data Structure
- create JSONDecoder
- decode
- Error Handling

## 169. Step 5: Update the User Interface using the Delegate Pattern

- create CoinManagerDelegate protocol
  - Error
  - fetchCoin

## 170. Step 6: Refactor with Extensions

- example solution과의 차이

### Model

- CoinData : rate만 있음
- didUpdatePrice에 price, currency
- currency는 getCoinPrice의 currency를 써도 됐음

### Controller

- UIPieckerView 관련 extension은 한 번에

```swift
//MARK: - UIPickerView DataSource & Delegate
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
  // ...
}
```
