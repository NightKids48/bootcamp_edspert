import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../routes/routes.dart';
import '../../../util/utilities.dart';
import '../../../widget/widgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.bgMain,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VStack([
                    "Hai, Guest".text.bold.size(20).fontFamily('nunito').make(),
                    "Selamat Datang"
                        .text
                        .bold
                        .size(18)
                        .fontFamily('nunito')
                        .make(),
                  ]),
                  Image.asset('assets/img/avatar.png')
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/vector-ppl.png'),
                    alignment: AlignmentDirectional.bottomEnd),
                color: ColorPallete.bgColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: Get.width * 0.3,
                    child: const Text(
                      'Mau pilih task mana nih ?',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: ColorPallete.textColor),
                    ),
                  )
                ],
              ),
            ).wFull(context).p(20),
            "Pilih Task".text.bold.size(20).fontFamily('nunito').make().p(20),
            const TaskWidget(
              no: 1,
              title: 'Get Detail Book',
              desc:
                  'Implementasi API https://api.itbook.store/1.0/books/9781484206485',
              route: Routes.book,
            ),
            10.heightBox,
            const TaskWidget(
              no: 2,
              title: 'Search Book With Detail Book',
              desc:
                  'Implementasi API https://api.itbook.store/1.0/search/{Keyword} dan https://api.itbook.store/1.0/books/{isbn}',
              route: Routes.search,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    controller.cr,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
