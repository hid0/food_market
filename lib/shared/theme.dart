part of 'shared.dart';

// ? set double margin
const double defaultMargin = 24;

// ignore: todo
// TODO color & font style
TextStyle grayFont = GoogleFonts.poppins().copyWith(color: grayColor);
TextStyle blackFont0 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFont1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFont2 = GoogleFonts.poppins().copyWith(color: Colors.black);
TextStyle loginStyleBtn = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600);
TextStyle registerStyleBtn = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
Color grayColor = "8D92A3".toColor();
Color primaryColor = "FFC700".toColor();
Color primary = const Color(0xffFFC700);
Color secondaryColor = "FAFAFC".toColor();
// !TODO button style
final ButtonStyle loginBtn = ElevatedButton.styleFrom(
  onPrimary: primaryColor,
  primary: primaryColor,
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8))),
  // minimumSize: Size(88, 24)
);
final ButtonStyle newAccountBtn = ElevatedButton.styleFrom(
  onPrimary: grayColor,
  primary: grayColor,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8))),
);
