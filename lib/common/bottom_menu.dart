import 'package:flutter/material.dart';
import 'package:kairos_app/common/container.dart';
// import 'package:get/get.dart';

// import 'package:optimalist_mobile/common/info_modal.dart';
// import 'package:optimalist_mobile/controllers/post_controller.dart';
// import 'package:optimalist_mobile/controllers/report_controller.dart';
// import 'package:optimalist_mobile/controllers/user_controller.dart';
// import 'package:optimalist_mobile/screens/activity_ranking.dart';
// import 'package:optimalist_mobile/screens/posts.dart';
// import 'package:optimalist_mobile/screens/menu.dart';

// ignore: use_key_in_widget_constructors
class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: KairosContainer(
              borderRadius: BorderRadius.circular(15),
              height: 60,
              width: 60,
              style: ContainerStyle.outset,
              child: const Icon(Icons.home, size: 30),
            ),
            // onTap: handleMenuTap,
          ),
          const SizedBox(width: 20),
          GestureDetector(
            child: KairosContainer(
              borderRadius: BorderRadius.circular(15),
              height: 60,
              width: 60,
              style: ContainerStyle.outset,
              child: const Icon(Icons.info_outline, size: 30),
            ),
            // onTap: handleInfoTap,
          ),
          const SizedBox(width: 20),
          GestureDetector(
            child: KairosContainer(
              borderRadius: BorderRadius.circular(15),
              height: 60,
              width: 60,
              style: ContainerStyle.outset,
              child: const Icon(Icons.bar_chart, size: 30),
            ),
            // onTap: handleRankingTap,
          ),
          const SizedBox(width: 20),
          GestureDetector(
            child: KairosContainer(
              borderRadius: BorderRadius.circular(15),
              height: 60,
              width: 60,
              style: ContainerStyle.outset,
              child: const Icon(Icons.bookmarks_outlined, size: 30),
            ),
            // onTap: handleArticlesTap,
          ),
        ],
      ),
    );
  }

//   void handleMenuTap() {
//     Get.offAll(() => MenuScreen());
//   }

//   void handleInfoTap() {
//     Get.dialog(
//       AlertDialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         content: InfoModal(),
//         actions: [
//           Container(
//             width: 100,
//             child: OptimalistButton(
//               onPressed: () => Get.back(),
//               text: "Close",
//             ),
//           )
//         ],
//         actionsPadding: EdgeInsets.all(15),
//       ),
//     );
//   }

//   void handleRankingTap() {
//     final UserController userController = Get.find();
//     if (userController.user?.value?.id != null) {
//       final ReportController postController = Get.find();
//       postController.getOverallRanking(userController.user.value.id);
//       postController.getActivityRanking(userController.user.value.id);
//       postController.getStressCheckRanking(userController.user.value.id);
//     }
//     Get.offAll(() => ActivityRankingScreen());
//   }

//   void handleArticlesTap() {
//     final PostController postController = Get.find();
//     postController.getAll();
//     Get.offAll(() => PostsScreen());
//   }
}
