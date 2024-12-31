import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emotion Analysis App',
      home: EmotionAnalysisScreen(),
    );
  }
}

class EmotionAnalysisScreen extends StatefulWidget {
  @override
  _EmotionAnalysisScreenState createState() => _EmotionAnalysisScreenState();
}

class _EmotionAnalysisScreenState extends State<EmotionAnalysisScreen> {
  String output = "Emotion will be displayed here";

  Future<void> analyzeEmotion(String inputText) async {
    String apiUrl =
        "https://api-inference.huggingface.co/models/bhadresh-savani/distilbert-base-uncased-emotion";
    var headers = {
      "Authorization":
          "Bearer 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",
    };
    var payload = {
      "inputs": inputText,
    };

    var response = await http.post(Uri.parse(apiUrl),
        headers: headers, body: jsonEncode(payload));

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      setState(() {
        output = responseData["label"];
      });
    } else {
      setState(() {
        output = "Error occurred, status code: ${response.statusCode}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emotion Analysis'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter your text:',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (text) {
                  // Handle user input
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Call the API when the button is pressed
                analyzeEmotion("I like you. I love you");
              },
              child: Text('Analyze Emotion'),
            ),
            SizedBox(height: 20),
            Text(
              'Emotion: $output',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
