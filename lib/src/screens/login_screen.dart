part of 'screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorName.rightone,
      bottomNavigationBar: ButtonWidget(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        text: 'LOGIN',
        color: colorName.button,
      ).pOnly(bottom: 35, left: 20, right: 20),
      body: SafeArea(
        child: Center(
          child: const Image(
            image: AssetImage('images/edspert.png'),
          ).p20(),
        ),
      ),
    );
  }
}
