part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;

    // ! this load template or scafolding of page
    return GeneralPage(
      title: "Sign In",
      subtitle: "Find your best ever meal",
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
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
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: grayFont,
                  hintText: "Input your email"),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
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
                border: Border.all(color: Colors.black)),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: grayFont,
                  hintText: "Type your password"),
            ),
          ),
          // ? show buttons
          Container(
            height: 45,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                // ignore: dead_code
                ? SpinKitFadingCircle(
                    size: 45,
                    color: primaryColor,
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: loginStyleBtn,
                    ),
                  ),
          ),
          Container(
            height: 45,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                // ignore: dead_code
                ? SpinKitFadingCircle(
                    size: 45,
                    color: primaryColor,
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: grayColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Create New Account",
                      style: registerStyleBtn,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
