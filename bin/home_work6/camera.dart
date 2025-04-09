import 'smart_home.dart';
class SecurityCamera extends SmartHome {
  @override
  turnOf() {
    print("camera turned on");
  }

  @override
  turnOn() {
    print("camera turned on");
  }
  void motionDetection(){
    print("motionDetection enabled");
  }
}