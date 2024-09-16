import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techingchildren/Getx/controller.dart';
import 'package:video_player/video_player.dart';

class Tutorail_video extends StatefulWidget {
  const Tutorail_video({super.key});

  @override
  State<Tutorail_video> createState() => _Tutorail_videoState();
}

class _Tutorail_videoState extends State<Tutorail_video> {
  late VideoPlayerController _controller;
  bool showvideo = false;
  bool state_video = true;
  @override
  void initState() {
    int index = Get.arguments[0] ?? 0;
    _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://ani-tech.ir/film/${index + 1}.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.play();
      });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (state_video == true) {
              _controller.pause();
              state_video = false;
            } else {
              if (state_video == false) {
                _controller.play();
                state_video = true;
              }
            }
            setState(() {});
          },
          child: Icon(state_video ? Icons.stop : Icons.play_arrow),
        ),
        body: Center(
          child: Visibility(
            visible: _controller.value.isInitialized,
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            replacement: CircularProgressIndicator(),
          ),
        ));
  }
}
