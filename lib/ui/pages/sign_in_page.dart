part of 'pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              "Email Address",
              style: blackFont1,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
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
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              "Password",
              style: blackFont1,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            // TODO this show textbox input for password
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
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
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    size: 45,
                    color: primaryColor,
                  )
                : ElevatedButton(
                    style: loginBtn,
                    onPressed: () {},
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: loginStyleBtn,
                        ))),
          )
        ],
      ),
    );
  }
}
