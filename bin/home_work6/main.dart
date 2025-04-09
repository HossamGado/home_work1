import 'light.dart';
import 'air_condition.dart';
import 'camera.dart';
import 'smart_home.dart';
class SmartHomeController {
  List<SmartHome> devices = [];
  void addDevice(SmartHome device){
    devices.add(device);
  }
  void turnAllOn(){
    for(var device in devices){
      device.turnOn();
    }
  }
  void turnAllOf(){
    for(var device in devices){
      device.turnOf();
    }
  }
}
void main(){
  Light light=Light();
  AirCondition ac=AirCondition();
  SecurityCamera sc=SecurityCamera();
  SmartHomeController controller=SmartHomeController();
  controller.addDevice(light);
  controller.addDevice(ac);
  controller.addDevice(sc);
  controller.turnAllOf();
  sc.motionDetection();
  ac.calculateTemp(40);
}
