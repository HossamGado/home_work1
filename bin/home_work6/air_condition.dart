import 'smart_home.dart';
class AirCondition extends SmartHome {
  int temperature=20;
  @override
  turnOf() {
    print("air turned of");
  }

  @override
  turnOn() {
    print("air turned on");
  }
  void calculateTemp(int temp){
    temperature=temp;
      print("temperature updated to $temp°C");
    }
  }
