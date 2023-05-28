import 'package:flutter/material.dart';
import 'global.dart' as global;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'podcast1.dart';

class podcast2 extends StatefulWidget{
  const podcast2({Key?key}):super(key: key);

  @override
  State<podcast2> createState()=>_podcast2();
}
class _podcast2 extends State<podcast2> {
  // podcast({super.key});

  final url1="https://www.youtube.com/watch?v=pAEioF7FaWY";
  
 late YoutubePlayerController _controller;

//   YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: YoutubePlayer.convertUrlToId(url1),
//     flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//     ),
// );

  @override
  void initState() {

    final vedioID=YoutubePlayer.convertUrlToId(url1);

    _controller=YoutubePlayerController(initialVideoId: vedioID!,
      flags:const YoutubePlayerFlags(autoPlay: true,mute: false),
    );
    super.initState();
  }

// void _videoPlayerListner () {
//    if (_isPlayerReady) {
//      setState(() {
//        _playerState = _controller.value.playerState;
//      });    
//    }
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Podcast...',style: TextStyle(color:Color(0xff093648) ),),
        backgroundColor: Color(0xffF6F6F6),
      ),
      body: Center(
        child: 
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              YoutubePlayer(controller: _controller,
              showVideoProgressIndicator: true,
              onReady: ()=>debugPrint("Ready"),
              
              bottomActions: [
                CurrentPosition(),
                ProgressBar(isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Color(0xff093648),
                  handleColor: Color(0xff093648),
                ),
                ),
                const PlaybackSpeedButton(),
                FullScreenButton(),
              ],
              )

            ],
      ),
      ),
      bottomNavigationBar: Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            color: Color(0xff093648),
            icon: Icon(Icons.arrow_back,size: 50,),
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return podcast1();
                }));
            },
          ),

          
        ],
      ),
    ),

    );
  }
}