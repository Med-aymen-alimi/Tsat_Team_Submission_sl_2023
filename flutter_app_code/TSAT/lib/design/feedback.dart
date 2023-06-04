import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  final FeedbackService feedbackService = FeedbackService();

  FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Provide Feedback",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Subject",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: "Message",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  sendFeedback(context);
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Submit Feedback"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Report a Problem",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Subject",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: "Message",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(top: 24 * MediaQuery.of(context).textScaleFactor),
                child: Center(
                  child: const Text(
                    "Contact Assistance",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              FractionallySizedBox(
                widthFactor: 0.5,
                child: TextButton(
                  onPressed: () {
                    contactAssistance(context);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Center(
                    child: Text(
                      "Call Us",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sendFeedback(BuildContext context) {
    // Send feedback logic
    feedbackService.sendFeedback("Feedback Subject", "Feedback Message");
    showSnackbar(context, "Thanks for your feedback");
  }

  void reportProblem(BuildContext context) {
    // Report problem logic
    feedbackService.reportProblem("Problem Subject", "Problem Message");
    showSnackbar(context, "The problem is reported");
  }

  void contactAssistance(BuildContext context) {
    // Contact assistance logic
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

class FeedbackService {
  void sendFeedback(String subject, String message) {
    // Implement your logic here to send the feedback to a backend service or API
    // You can use packages like http or dio to make HTTP requests
  }

  void reportProblem(String subject, String message) {
    // Implement your logic here to report the problem to a backend service or API
    // You can use packages like http or dio to make HTTP requests
  }
}

class RaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final Color textColor;

  const RaisedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: color,
      ),
      child: child,
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FeedbackPage(),
    );
  }
}
