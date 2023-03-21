part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorName.rightone,
        iconTheme: const IconThemeData(color: colorName.button),
        title: "PROFILE"
            .text
            .color(colorName.button)
            .fontFamily('nunito')
            .size(17)
            .bold
            .make(),
      ),
      body: SafeArea(
        child: VStack([
          VxCircle(
            radius: 150,
            backgroundColor: colorName.background,
            backgroundImage: const DecorationImage(
              image: AssetImage('images/edspert_id.png'),
            ),
          ).centered().p20(),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: colorName.background,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.person_outline_sharp,
                    color: colorName.button,
                  ),
                  title:
                      "Dea Agustiana".text.size(17).fontFamily('nunito').make(),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email_outlined,
                    color: colorName.button,
                  ),
                  title: "kid.universe48@gmail.com"
                      .text
                      .size(17)
                      .fontFamily('nunito')
                      .make(),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.mobile_friendly_outlined,
                    color: colorName.button,
                  ),
                  title:
                      "087744412868".text.size(17).fontFamily('nunito').make(),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.location_city_outlined,
                    color: colorName.button,
                  ),
                  title: "Cirebon".text.size(17).fontFamily('nunito').make(),
                ),
              ],
            ),
          ).p20()
        ]),
      ),
    );
  }
}
