# appbar_test
AppBar, Drawer 사용

## 실행 화면
![image](https://user-images.githubusercontent.com/77111523/139222727-152a0966-9dbe-48fb-997c-708b25c30eae.png)

## 설명
- leading은 간단한 위젯이나 아이콘 등을 앱바 타이틀 왼쪽에 위치시키는 기능을 함. 근데 앱바에서만 쓰이는 기능은 아님.
- actions는 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용. 여기에서는 쇼핑 카트랑 서치 버튼을 사용
- Drawer 메뉴를 생성하면 자동으로 햄버거 메뉴(짝대기 3개, 위의 코드 부분)가 생성됨. 따라서 AppBar에서 저 `leading` 부분을 없애고 시작
- Drawer 안에 ListView 안에 UserAccountsDrawerHeader랑 ListTile 들
- AppBar에서 왼쪽은 `leading:` , 오른쪽은 `actions:`
- ListTile에서 왼쪽은 `leading:` , 오른쪽은 `trailing:`
