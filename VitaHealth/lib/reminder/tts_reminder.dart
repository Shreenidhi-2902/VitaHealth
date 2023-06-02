import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TtsScreen extends StatefulWidget {
  @override
  _TtsScreenState createState() => _TtsScreenState();
}

class _TtsScreenState extends State<TtsScreen> {
  FlutterTts flutterTts = FlutterTts();
  String text = '';

  void _scheduleTts() {
    setState(() {
      text = '11mg of aspirin 1 tablet  11mg of aspirin 1 tablet  11 mg of aspirin 1 tablet';
    });

    Future.delayed(Duration(seconds: 10), () {
      flutterTts.speak(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scheduled TTS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Press the button to schedule TTS'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _scheduleTts,


              child: Text('Schedule TTS'),
            ),
          ],
        ),
      ),
    );
  }
}
