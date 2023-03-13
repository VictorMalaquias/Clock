import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 22,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          AdaptiveTheme.of(context).toggleThemeMode();
                        });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22,
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.pink,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: AnalogClock(
                    decoration: const BoxDecoration(
                        color: Colors.transparent, shape: BoxShape.circle),
                    width: 150,
                    isLive: true,
                    hourHandColor: Colors.grey,
                    minuteHandColor: Colors.grey,
                    secondHandColor: Colors.pink,
                    numberColor: Colors.grey,
                    textScaleFactor: 1.4,
                    showDigitalClock: false,
                    datetime: DateTime(2023, 2, 28, 9, 30, 0),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'São Paulo',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w400,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '09:34',
                      style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.w400,
                          fontSize: 30),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customButtonContainers(Icons.alarm, Colors.grey, 'clock'),
                    customButtonContainers(Icons.list, Colors.grey, 'list'),
                    customButtonContainers(
                        Icons.settings, Colors.grey, 'settings')
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

Widget customButtonContainers(IconData icon, Color color, String text) =>
    Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 40,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(color: color),
        )
      ],
    );
