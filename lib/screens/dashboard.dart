import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<GridItem> gridItems = [
    GridItem(
        iconData: Icons.network_cell_outlined,
        title: 'Network \nStrength',
        number: "42"),
    GridItem(
        iconData: Icons.battery_charging_full_outlined,
        title: 'Battery \nCharge',
        number: "on"),
    GridItem(
        iconData: Icons.electric_meter_outlined,
        title: 'Fence \nCurrent',
        number: "99"),
  ];

  bool _isSwitchedOn = false;

  void _toggleSwitch(bool newValue) {
    setState(() {
      _isSwitchedOn = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.green,
            ),
          ),
          title: Text(
            "Tin-Factory Main Road",
            style: TextStyle(color: Colors.green[900]),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LiteRollingSwitch(
                value: true,
                width: MediaQuery.of(context).size.width * .2,
                textOn: 'On',
                textOff: 'Off',
                iconOn: Icons.power_settings_new,
                iconOff: Icons.power_settings_new,
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (bool state) {
                  _toggleSwitch(state);
                },
                onDoubleTap: () {},
                onSwipe: () {},
                onTap: () {},
              ),
            )
          ],
          flexibleSpace: Container(
            margin: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.electric_meter),
                      Text("Battery \nVoltage"),
                      Text("45.5 V"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.electric_meter,
                        color: Colors.green[900],
                      ),
                      Text(
                        "Fence \nVoltage",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold),
                      ),
                      Text("45.5 kV",
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.solar_power),
                      Text("Solar \nVoltage"),
                      Text("45.5 V"),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.solar_power),
                      Text("Solar \nCurrent"),
                      Text("45 A"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          color: Colors.white,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _isSwitchedOn
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(100),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green[100]!.withOpacity(0.5),
                                spreadRadius: 15,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const CircularDottedProgress(
                            progress: 0.5, // Update this value as needed
                            dotColor: Colors.green,
                            dotSize: 5.0,
                          ),
                        ),
                        const Positioned(
                          child: Text(
                            '5.2 kw \n1.2Amps',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: Container(
                        padding: const EdgeInsets.all(90),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.red, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[100]!.withOpacity(0.8),
                              spreadRadius: 15,
                              blurRadius: 12,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: const Text(
                          "Switched off",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        // ),
                        // ),
                      ),
                    ),
              const SizedBox(
                height: 90,
              ),
              const Text("Updated 28 minutes ago"),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: gridItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      var grid = gridItems[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Card(
                          color: Colors.green[800],
                          margin: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                grid.iconData,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                grid.title,
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                grid.number,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem {
  final IconData iconData;
  final String title;
  final String number;

  GridItem({required this.iconData, required this.title, required this.number});
}

class BasicDistrict {
  final List<BasicDistrict> karnatakaDistricts;

  BasicDistrict({this.karnatakaDistricts = const []});
}

////////////////Progress bar///
class CircularDottedProgressPainter extends CustomPainter {
  final double progress;
  final Color dotColor;
  final double dotSize;

  CircularDottedProgressPainter({
    required this.progress,
    required this.dotColor,
    required this.dotSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(100, 100) / 1; // Adjusted radius

    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final angle = 2 * pi * (progress.clamp(0, 1));

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      angle,
      false,
      paint,
    );

    final dotStartX = center.dx + radius * cos(-pi / 2);
    final dotStartY = center.dy + radius * sin(-pi / 2);

    final dotEndX = center.dx + radius * cos(angle - pi / 2);
    final dotEndY = center.dy + radius * sin(angle - pi / 2);

    final dotPaint = Paint()..color = dotColor;

    canvas.drawCircle(Offset(dotStartX, dotStartY), dotSize, dotPaint);
    canvas.drawCircle(Offset(dotEndX, dotEndY), dotSize, dotPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CircularDottedProgress extends StatelessWidget {
  final double progress;
  final Color dotColor;
  final double dotSize;

  const CircularDottedProgress({
    super.key,
    required this.progress,
    required this.dotColor,
    required this.dotSize,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircularDottedProgressPainter(
        progress: progress,
        dotColor: dotColor,
        dotSize: dotSize,
      ),
    );
  }
}
