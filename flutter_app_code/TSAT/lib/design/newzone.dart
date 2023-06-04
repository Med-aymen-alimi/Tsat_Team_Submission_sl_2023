import 'package:flutter/material.dart';

class NewZonePage extends StatefulWidget {
  const NewZonePage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewZonePage> {
  int landCount = 2; // Start the land ID counter from 3
  List<Land> lands = [];

  Widget buildElevatedButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Set button color to green
        onPrimary: Colors.white,
        textStyle: TextStyle(fontSize: 18),
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Zone"),
        backgroundColor: Colors.green, // Set app bar color to green
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: buildElevatedButton("Add Zone", () {
                setState(() {
                  landCount++;
                  Land newLand = Land(
                    id: landCount,
                    surface: 'Surface',
                    realTimeData: 'Real-time Data',
                  );
                  lands.add(newLand);
                });
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class LandCard extends StatelessWidget {
  final Land land;

  const LandCard({Key? key, required this.land}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text("Zone ${land.id}"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
  final String surface;
  final String realTimeData;

  Land({
    required this.id,
    required this.surface,
    required this.realTimeData,
  });
}
