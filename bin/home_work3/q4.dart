// Use Map and List to create a program that stores weather data for different cities (temperature,
// humidity, etc.). Write a function that can retrieve and print weather details using a city name.

void main(){

  Map<String,dynamic> weatherData={
    "cairo":{"temperature":30,"humidity":50,"status":"sunny"},
    "tokyo":{"temperature":12,"humidity":22,"status":"cloudy"},
    "paris":{"temperature":20,"humidity":30,"status":"rainy"},
    "london":{"temperature":29,"humidity":40,"status":"windy"},
  };
  displayWeatherDetails("cairo", weatherData);
}

void displayWeatherDetails(String city,Map<String,dynamic>data){
  if(data.containsKey(city)){
    print("temperature:${data[city]["temperature"]} ");
    print("humidity:${data[city]["humidity"]} ");
    print("status:${data[city]["status"]}");
  }else{
    print("data for $city is not available");
  }
}