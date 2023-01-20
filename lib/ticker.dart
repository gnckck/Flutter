
// Ticker 클래스가 하는 일은 우리가 원하는 틱(초) 수를 가져오고
// 매 남은 초를 방출하는 스트림을 반환하는 틱 함수를 노출하는 것
// 다음으로 Ticker를 사용할 TimerBloc을 생성해야함
class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1),
                          (x) => ticks -x - 1)
                          .take(ticks);
          
  }
}