part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController HouseNumberController = TextEditingController();
  bool isLoading = false;
  // List<String> cities;
  // String selectedCity;

  @override
  // void initState() {
  //   super.initState();

  //   cities = ['Jepara', 'Kudus', 'Jakarta', 'Demak', 'Semarang'];
  //   selectedCity = cities[0];
  // }

  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Address",
      subtitle: "Make sure it's valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          // ! Phone Number Inpur Form
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              "Phone No.",
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
              controller: PhoneNumberController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: grayFont,
                hintText: "Input your phone number",
              ),
            ),
          ),
          // ! Address Inpur Form
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              "Address",
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
              controller: AddressController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: grayFont,
                hintText: "Input your address",
              ),
            ),
          ),
          // ! House Number Inpur Form
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              "House No.",
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
              controller: AddressController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: grayFont,
                hintText: "Input your address",
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "City",
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
            child: DropdownButton(
              isExpanded: true,
              underline: SizedBox(),
              items: [
                DropdownMenuItem(
                  child: Text(
                    "Jepara",
                    style: blackFont1,
                  ),
                ),
              ],
              onChanged: (item) {},
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
                      backgroundColor: primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign Up Now",
                      style: loginStyleBtn,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
