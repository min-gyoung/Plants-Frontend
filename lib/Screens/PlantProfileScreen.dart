import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlantProfileScreen extends StatelessWidget {
  const PlantProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/Chat');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        child: Icon(
          Icons.message_outlined,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                '새싹이',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              height: 250,
              margin: EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 183, 178),
              ),
              child: Image(
                image: AssetImage(
                  'images/plant.jpeg',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 183, 178),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 183, 178),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "식물 품종",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "꽃말",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    "수분 상태",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text("부족"),
                      Spacer(
                        flex: 2,
                      ),
                      Text("적정"),
                      Spacer(
                        flex: 2,
                      ),
                      Text("과다"),
                      Spacer(),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    width: 300,
                    height: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: 0.7,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                        backgroundColor: Color(0xffD6D6D6),
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
