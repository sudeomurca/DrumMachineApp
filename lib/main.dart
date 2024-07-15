/*import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('assets/woo.wav'));
              },
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('assets/ridebel.wav'));
              },
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(player: player),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final AudioPlayer player;

  const DrumPage({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('woo.wav'));
                      },
                      child: Container(
                        color: Colors.green[300],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('clap2.wav'));
                      },
                      child: Container(
                        color: Colors.brown[300],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('clap3.wav'));
                      },
                      child: Container(
                        color: Colors.purpleAccent[200],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('bip.wav'));
                      },
                      child: Container(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('crash.wav'));
                      },
                      child: Container(
                        color: Colors.yellow[200],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('how.wav'));
                      },
                      child: Container(
                        color: Colors.blueAccent[100],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('ridebel.wav'));
                      },
                      child: Container(
                        color: Colors.pinkAccent[100],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('oobah.wav'));
                      },
                      child: Container(
                        color: Colors.lime[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
