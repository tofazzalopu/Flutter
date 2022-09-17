import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    fetchWeatherData();
    super.initState();
  }

  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;

  fetchWeatherData() async {
    String weatherApi =
        "https://api.openweathermap.org/data/2.5/weather?lat=23.774426&lon=90.355951&appid=39fdf08af3ac9f07cffe96e373338fc0&units=metric";
    String forecastApi =
        "https://api.openweathermap.org/data/2.5/forecast?lat=23.774426&lon=90.355951&appid=39fdf08af3ac9f07cffe96e373338fc0&units=metric";

    var weatherResponse = await http.get(Uri.parse(weatherApi));
    var forecastResponse = await http.get(Uri.parse(forecastApi));
    // print(weatherResponse.body);

    setState(() {
      weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
      forecastMap =
          Map<String, dynamic>.from(jsonDecode(forecastResponse.body));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: weatherMap == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white.withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          spacebox(20),
                          Text(
                            '${weatherMap!["name"]}',
                            style: myfonts(26, FontWeight.bold),
                          ),
                          spacebox(10),
                          Text(
                            '${Jiffy(DateTime.now()).format('do MMM, EEEE, yyyy  h:mm a')}',
                            style: myfonts(14, FontWeight.bold),
                          ),
                          spacebox(15),
                          Text(
                            '${weatherMap!['weather'][0]['main'] == 'Rain' ? "🌧️" : weatherMap!['weather'][0]['main'] == 'Haze' ? "☁️" : weatherMap!['weather'][0]['main'] == 'Cloudy' ? "🌤️" : "🌥️"}',
                            style: TextStyle(fontSize: 80),
                          ),
                          spacebox(10),
                          Text(
                            '${weatherMap!['weather'][0]['main']}',
                            style: myfonts(20, FontWeight.bold),
                          ),
                          spacebox(10),
                          Text(
                            '${weatherMap!['main']['temp']}° C',
                            style: myfonts(22, FontWeight.bold),
                          ),
                          spacebox(10),
                          Text(
                            '🌥️ feels like : ${weatherMap!['main']['feels_like']} °C',
                            style: myfonts(12, FontWeight.bold),
                          ),
                          spacebox(30),
                          Text(
                            '🌦️ Humidity: ${weatherMap!['main']['humidity']}% , 🌫️ Visibility: ${weatherMap!['visibility'] / 1000} km',
                            style: myfonts(12, FontWeight.bold),
                          ),
                          spacebox(10),
                          Text(
                            '🌪️ Pressure: ${weatherMap!['main']['pressure']}hPa , 🌨️ Clouds: ${weatherMap!['clouds']['all']}',
                            style: myfonts(12, FontWeight.bold),
                          ),
                          spacebox(10),
                          Text(
                            '🌄 Sunrise: ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!['sys']['sunrise'] * 1000)).format('h:mm a')} , 🌅 Sunset: ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!['sys']['sunset'] * 1000)).format('h:mm a')}',
                            style: myfonts(12, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    spacebox(20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 40,
                        child: Text('Forecast',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: forecastMap!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white.withOpacity(0.6),
                            ),
                            child: Column(
                              children: [
                                spacebox(10),
                                Text(
                                    "${Jiffy('${forecastMap!["list"][index]["dt_txt"]}').format("EEE, h:mm a")}",
                                    style: myfonts(14)),
                                spacebox(10),
                                Text(
                                  '${forecastMap!['list'][index]['weather'][0]['main'] == 'Rain' ? "🌧️" : forecastMap!['list'][index]['weather'][0]['main'] == 'Sunny' ? "🌦️" : "☁️"}',
                                  style: TextStyle(fontSize: 55),
                                ),
                                spacebox(8),
                                Text(
                                  '${forecastMap!['list'][index]['main']['temp']} °C',
                                  style: myfonts(18, FontWeight.bold),
                                ),
                                spacebox(8),
                                Text(
                                  'Min Temp: ${forecastMap!['list'][index]['main']['temp_min']} °C\nMax Temp: ${forecastMap!['list'][index]['main']['temp_max']} °C',
                                  style: myfonts(08),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => spacebox(0, 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  myfonts(double? fs, [FontWeight? fw]) {
    return TextStyle(
      fontSize: fs,
      fontWeight: fw,
      color: Colors.black,
    );
  }

  spacebox([double? h, double? w]) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
