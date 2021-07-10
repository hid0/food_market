part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    // ! this load template or scafolding of page
    return GeneralPage(
      title: "Sign Up",
      subtitle: "Register and eat",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: 110,
            height: 110,
            margin: EdgeInsets.only(top: 26),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photo_border.png'),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/474x/8a/f4/7e/8af47e18b14b741f6be2ae499d23fcbe.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              26,
              defaultMargin,
              6,
            ),
            width: double.infinity,
            child: Text(
              "Full Name",
              style: blackFont1,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // ignore: todo
            // TODO this show textbox input for email address
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: grayFont,
                hintText: "Input your full name",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              26,
              defaultMargin,
              6,
            ),
            width: double.infinity,
            child: Text(
              "Email Address",
              style: blackFont1,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // ignore: todo
            // TODO this show textbox input for email address
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: grayFont,
                hintText: "Input your email",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(
              defaultMargin,
              26,
              defaultMargin,
              6,
            ),
            width: double.infinity,
            child: Text(
              "Password",
              style: blackFont1,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            // ignore: todo
            // TODO this show textbox input for password
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: grayFont,
                hintText: "Type your password",
              ),
            ),
          ),
          // ? show buttons
          Container(
            height: 45,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Get.to(AddressPage());
              },
              child: Text(
                "Continue",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
