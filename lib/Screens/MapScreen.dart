import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:get/route_manager.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

late KakaoMapController mapController;

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DraggableScrollableController bottomController =
        DraggableScrollableController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        
        elevation: 3,
        shadowColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: <Widget>[
          KakaoMap(
            onMapCreated: (controller) async {
              mapController = controller;
              // mapController.addMarker(markers: [Marker(latLng: )])

              mapController.addMarker(
                markers: [
                  Marker(
                    markerId: 'test',
                    latLng: LatLng(33.44986152248232, 126.57050723840896),
                  ),
                  Marker(
                    markerId: 'test2',
                    latLng: LatLng(33.450560189752, 126.57133888182207),
                  ),
                ],
              );
            },
            onMarkerTap: (markerId, latLng, zoomLevel) => Get.toNamed("/Store"),
            onMapTap: (latLng) {
              print(latLng);
            },
          ),
          Positioned(
            bottom: 70,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/Resister');
              },
              child: Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                      color: Colors.grey,
                    )
                  ],
                ),
                child: Image.asset(
                  'images/plants.png',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            right: 105,
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/OthersPlants');
              },
              child: Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                      color: Colors.grey,
                    )
                  ],
                ),
                child: Image.asset(
                  'images/othersplants.png',
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              minChildSize: 0.1,
              initialChildSize: 0.25,
              controller: bottomController,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, -10),
                      ),
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Stack(
                    children: [
                      ListView(
                        controller: scrollController,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/Store');
                            },
                            child: ListTile(
                              title: Text(
                                "[그 계절]",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 22),
                              ),
                              trailing: Container(
                                alignment: Alignment.bottomRight,
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/store2.jpeg'),
                                  ),
                                ),
                              ),
                              subtitle: RatingBar.builder(
                                itemSize: 15,
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color:
                                      const Color.fromARGB(255, 26, 182, 107),
                                ),
                                onRatingUpdate: (double value) {},
                              ),
                            ),
                          ),
                          Divider(color: Colors.grey),
                          ListTile(
                            title: Text(
                              "매지 가게",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 22),
                            ),
                            trailing: Container(
                              alignment: Alignment.bottomRight,
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/store3.jpeg'),
                                ),
                              ),
                            ),
                            subtitle: RatingBar.builder(
                              itemSize: 15,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 26, 182, 107),
                              ),
                              onRatingUpdate: (double value) {},
                            ),
                          ),
                          Divider(color: Colors.grey),
                          ListTile(
                            title: Text(
                              "행운 식당",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 22),
                            ),
                            trailing: Container(
                              alignment: Alignment.bottomRight,
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/store4.jpeg'),
                                ),
                              ),
                            ),
                            subtitle: RatingBar.builder(
                              itemSize: 15,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 26, 182, 107),
                              ),
                              onRatingUpdate: (double value) {},
                            ),
                          ),
                          Divider(color: Colors.grey),
                          ListTile(
                            title: Text(
                              "Feel 돈까스",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 22),
                            ),
                            trailing: Container(
                              alignment: Alignment.bottomRight,
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/store5.jpeg'),
                                ),
                              ),
                            ),
                            subtitle: RatingBar.builder(
                              itemSize: 15,
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 26, 182, 107),
                              ),
                              onRatingUpdate: (double value) {},
                            ),
                          ),
                          Divider(
                              color: const Color.fromARGB(255, 123, 123, 123)),
                        ],
                      ),
                      Positioned(
                        top: 15,
                        left: 170,
                        right: 170,
                        child: Container(
                          height: 4,
                          width: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
