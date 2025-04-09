
import 'smart_home.dart';
class Light extends SmartHome{
  @override
  turnOf() {
    print("light turned of");
  }

  @override
  turnOn() {
    print("light turned on");
  }
}
