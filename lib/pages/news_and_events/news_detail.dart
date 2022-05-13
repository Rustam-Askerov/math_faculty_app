import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';
import 'package:video_player/video_player.dart';

class NewsDetail extends StatefulWidget {
  NewsDetail(
      {Key? key, required this.title, required this.news, this.videoUrl = ''})
      : super(key: key);

  final String title;
  final String news;
  final String videoUrl;

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  final ScrollController controller = ScrollController();

  late VideoPlayerController _video_controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.title}',
          style: TextStyle(
              color: Color.fromRGBO(26, 91, 165, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(26, 91, 165, 1),
              ),
              onPressed: () {
                Get.back();
              },
            );
          },
        ),
        //iconTheme: IconTheme(data: IconThemeData(color: Color.fromRGBO(26, 91, 165, 1)), child: ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(40, 137, 245, 1),
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                opacity: 0.2,
                fit: BoxFit.cover,
              ),
            ),
            width: Get.size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 240,
                ),
                Expanded(
                  child: Container(
                    width: Get.size.width,
                    padding: EdgeInsets.all(16).copyWith(top: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '${widget.title}',
                          style: TextStyle(
                              color: Color.fromRGBO(26, 91, 165, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: controller,
                            child: Column(
                              children: [
                                widget.news != ''
                                    ? Text(
                                        '${widget.news}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      )
                                    : SizedBox(),
                                widget.videoUrl != ''
                                    ? Link(
                                        uri: Uri.parse(widget.videoUrl),
                                        builder: (context, followLink) =>
                                            GestureDetector(
                                          onTap: followLink,
                                          child: Text(
                                            'Посмотреть видео',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  26, 91, 165, 1),
                                              fontSize: 32,
                                              fontWeight: FontWeight.w800,
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 280,
            margin: EdgeInsets.only(left: 16, right: 16, top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/default_post_preview.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ],
      ),
      // floatingActionButton: widget.videoUrl != ''
      //     ? FloatingActionButton(
      //         onPressed: () {
      //           // Wrap the play or pause in a call to `setState`. This ensures the
      //           // correct icon is shown.
      //           setState(() {
      //             // If the video is playing, pause it.
      //             if (_video_controller.value.isPlaying) {
      //               _video_controller.pause();
      //             } else {
      //               // If the video is paused, play it.
      //               _video_controller.play();
      //             }
      //           });
      //         },
      //         // Display the correct icon depending on the state of the player.
      //         child: Icon(
      //           _video_controller.value.isPlaying
      //               ? Icons.pause
      //               : Icons.play_arrow,
      //         ),
      //       )
      //     : FloatingActionButton(
      //         onPressed: () {},
      //       ),
    );
  }
}
