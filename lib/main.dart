import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:kairos_app/screens/app.dart';
// import 'package:kairos_app/screens/home.dart';

//Paso 1: Agregue "Get" antes de su materialApp, convirtiéndolo en GetMaterialApp
// void main() => runApp(
//       GetMaterialApp(
//         theme: ThemeData.dark(),
//         home: const Home(),
//         debugShowCheckedModeBanner: false,
//       ),
//     );

// void main() async {
//   runApp(
//     GetMaterialApp(
//       theme: ThemeData.dark(),
//       home: const Home(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

void main() {
  runApp(
    const KairosApp(
      isLoggedIn: true,
      isFirstLogin: false,
    ),
  );
}
