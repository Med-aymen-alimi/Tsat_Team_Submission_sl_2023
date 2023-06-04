import 'package:flutter/material.dart';
import 'package:myapp/design/login.dart'; // Replace with the actual path to login.dart
import 'package:myapp/design/newzone.dart';
import 'package:myapp/design/feedback.dart';
import 'package:myapp/design/area1.dart';
import 'package:myapp/design/area2.dart';

class CitiesPage extends StatelessWidget {
  final String userName = "Salem"; // Replace with actual user name
  final List<City> cities = [
    City(
      name: "Zone 1",
      surface: "Surface A",
      image: "assets/design/images/heirloom-tomatoes.jpg",
    ),
    City(
      name: "Zone 2",
      surface: "Surface B",
      image: "assets/design/images/tomato1.png",
    ),
    // Add more cities as needed
  ];

  CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back arrow button
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage("assets/design/images/ellipse-479-bg.png"),
            ),
            const SizedBox(height: 20),
            Text(
              "Welcome $userName",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/design/images/map-1.png",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  "Zones Available",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  return CityCard(city: cities[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewZonePage()),
                    );
                  },
                  child: const Text("Add New Zone"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackPage()),
                    );
                  },
                  child: const Text("Feedback"),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class City {
  final String name;
  final String surface;
  final String image;

  City({
    required this.name,
    required this.surface,
    required this.image,
  });
}

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({Key? key, required this.city}) : super(key: key);

  void navigateToArea(BuildContext context, String area) {
    if (area == "area1.dart") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Area1Page()),
      );
    } else if (area == "area2.dart") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Area2Page()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InkWell(
        onTap: () {
          if (city.name == "Zone 1") {
            navigateToArea(context, "area1.dart");
          } else if (city.name == "Zone 2") {
            navigateToArea(context, "area2.dart");
          }
        },
        child: Column(
          children: [
            Image.asset(city.image),
            ListTile(
              title: Text(city.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Surface: ${city.surface}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
