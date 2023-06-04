import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int landCount = 0;
  List<Land> lands = [];

  Widget buildRaisedButton(String text, VoidCallback onPressed) {
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Land"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: lands.length,
                itemBuilder: (context, index) {
                  return LandCard(land: lands[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            buildRaisedButton("Add Land", () {
              setState(() {
                landCount++;
                Land newLand = Land(
                  id: landCount,
                  zone: 'Zone',
                  country: 'Country',
                  surface: 'Surface',
                  realTimeData: 'Real-time Data',
                );
                lands.add(newLand);
              });
            }),
          ],
        ),
      ),
    );
  }
}

class LandCard extends StatelessWidget {
  final Land land;

  const LandCard({super.key, required this.land});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text("Land ${land.id}"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Zone: ${land.zone}"),
            Text("Country: ${land.country}"),
            Text("Surface: ${land.surface}"),
            Text("Real-time Data: ${land.realTimeData}"),
          ],
        ),
      ),
    );
  }
}

class Land {
  final int id; // Unique identifier for the land
  final String zone;
  final String country;
  final String surface;
  final String realTimeData;

  Land({
    required this.id,
    required this.zone,
    required this.country,
    required this.surface,
    required this.realTimeData,
  });
}
class RaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final Color textColor;

  const RaisedButton({super.key, 
    required this.onPressed,
    required this.child,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor, backgroundColor: color,
      ),
      child: child,
    );
  }
}


