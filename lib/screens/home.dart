import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairos_app/controllers/number_controller.dart';
import 'package:kairos_app/controllers/navigation_controller.dart';
import 'package:kairos_app/screens/other.dart';
import 'package:kairos_app/screens/podcasts.dart';

class Home extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Home();

  @override
  Widget build(context) {
    final NumberController c = Get.put(NumberController());
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());

    return Scaffold(
        body: Obx(() {
          switch (bottomNavigationController.selectedIndex.value) {
            case 0:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text("Go to Other"),
                      onPressed: () => Get.to(Other()),
                    ),
                    Text("Clicks: ${c.count.string}"),
                  ],
                ),
              );
            case 1:
              return const PodcastsScreen();
            case 2:
              return const Center(
                  child: Text(
                      "Session Screen")); // Asegúrate de tener una clase SessionsScreen definida
            case 3:
              return const Center(
                  child: Text(
                      "Itinerary Screen")); // Asegúrate de tener una clase ItineraryScreen definida
            default:
              return const Home();
          }
        }),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: bottomNavigationController.selectedIndex.value,
          onTap: bottomNavigationController.onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.podcasts),
              label: 'Podcasts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Itinerary',
            ),
          ],
        ),
        backgroundColor: Colors.grey[500],
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.orangeAccent,
        ),

        // Reemplace el Navigator.push de 8 líneas por un simple Get.to(). No necesitas contexto
        // body: Center(
        //     child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //         child: const Text("Go to Other"),
        //         onPressed: () => Get.to(Other())),
        //     // Utilice Obx(()=> para actualizar Text() siempre que se cambie el recuento.
        //     Obx(() => Text("Clicks: ${c.count.string}"))
        //   ],
        // )),
        floatingActionButton: FloatingActionButton(
            onPressed: c.increment, child: const Icon(Icons.add)));
  }
}
