import 'package:cyber_security_awareness_aibot/Widgets/card_details.dart';
import 'package:eve_de_muslim_lite/Screens/chatbot_screen.dart';
// import 'package:eve_de_muslim_lite/Screens/chatbot_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class UserScreen extends StatefulWidget {
  final String userUid, userName, userEmail;

  const UserScreen({
    super.key,
    required this.userUid,
    required this.userName,
    required this.userEmail,

  });

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 16, 14),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 67, 76),
        centerTitle: true,
        titleSpacing: 1,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/Logo2.png',scale: 13,),
            const Text(
              'Cyber Security AI Chatbot',
              style: TextStyle(fontWeight: FontWeight.w500,
                  shadows: [BoxShadow(blurRadius: 10, spreadRadius: 20)]),
            ),
          ],
        ),
      ),

       body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.custom(
  gridDelegate: SliverQuiltedGridDelegate(
    crossAxisCount: 3,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    repeatPattern: QuiltedGridRepeatPattern.mirrored,

    pattern: [
      const QuiltedGridTile(2, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1)
    ],
  ),
  childrenDelegate: SliverChildBuilderDelegate(
    (context, index) {
              final cardDetail = cardDetails[index % cardDetails.length];
              return GestureDetector(
                onTap: cardDetail.navigate,
                
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.blueGrey,                              
                  margin: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Circular card for the button
                    ),
                  color: cardDetail.color,
                  child: Stack(
                    children: [
                      // Display the image
                      Positioned(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5,bottom: 20),
                            child: Card(
                              elevation: 5,
                              shadowColor: const Color.fromARGB(199, 184, 178, 178),
                              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  scale: 1.8,
                                  cardDetail.imagePath,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*.3,
                          child: Text(
                            cardDetail.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              height: 1,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              shadows: [BoxShadow(color: Colors.black,blurRadius: 10,spreadRadius: 10)]
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: cardDetails.length,
          ),
        ),
      
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    Get.to(() => ChatScreen(
          userUid: widget.userUid,
          userName: widget.userName,
          userEmail: widget.userEmail,
        ));
  },
  child: Card(
    shadowColor: Colors.cyanAccent,
    elevation: 10,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50), // Circular card for the button
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10), // Ensures the image fits within the card's rounded border
      child: Image.asset(
        "assets/images/AI_Bot_Logo.jpg",
        fit: BoxFit.cover, // Ensures the image fills the card entirely
      ),
    ),
  ),
),

    );
  }
}
