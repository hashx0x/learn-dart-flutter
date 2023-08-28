// main entry point of the application
// main is essential
void variables() {
  print('variables start....');
  var name = 'JG';
  // 변수를 변경할땐 같은 타입으로
  // name = 1;
  name = 'GJ';
  String name2 = 'Jf';

  // var: 지역변수, 업데이트 가능
  // type 선언: class 에서 변수나 property 선언시 타입 명시
  // data type: int, double, String, bool, dynamic, Object

  var value;
  value = 1;
  value = '1';
  value = true;

  // dynamic
  // dynamic: 타입 업데이트 가능, runtime 에서 타입이 결정됨, 반드시 필요할때만 사용
  dynamic value2;
  value2 = '1';
  if (value2 is String) {
    print(value2.hashCode);
    // hashCode: dart 에서는 모든 객체가 가지고 있는 고유한 값
  }

  // null 값 참조시 runtime error 발생
  // null safety : compile 전 null 값 제한   개발자가 null 을 null 값을 참조할 수 없도록 제한
  // without null safety
  bool isEmpty(String string) => string.length == 0;

  // isEmpty(null); => runtime error
  // null safety: dart 에서는 어떤 변수 또는 데이터가 null이 될수 있음을 정확히 명시하는것을 말함, 명시해야함
  // dart에서 기본적으로 모든 변수는 non-nullable

  String hong = 'hong';
  // hong = null; => compile error

  String? jun = 'jun';
  jun = null; // => ok  null safety
  if (jun != null) {
    print(jun.length);
  }
  // or
  print(jun?.length);

  // final: runtime 상수, 한번만 초기화 가능,  수정 불가, = typescript const
  final String name3 = 'hong';

  // name3 = 'jun'; // => compile error

  // late: modifier type, runtime 상수, 수정 가능, = typescript let
  late String name4;
  name4 = 'hong';

  // const : compile-time constant. 컴파일할때 알고있는 값에 사용.  컴파일 타임에 상수로 선언된다. 수정 불가 typescript env (환경변수)
  const APIKEY = '1234';

  // recap
  // var 권장 : method, 작은 함수 안, var 를 사용하면 dart compiler가 타입을 추론해주기 때문에 권장
  // type: class 에서 변수나 property 선언시 타입 명시
  // dynamic: 타입 업데이트 가능, runtime 에서 타입이 결정됨, 반드시 필요할때만 사용
  print('variables end....');
}
