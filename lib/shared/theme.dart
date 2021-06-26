part of 'shared.dart';

// ? set double margin
const double defaultMargin = 24;

// TODO color & font style
TextStyle grayFont = GoogleFonts.poppins().copyWith(color: grayColor);
TextStyle blackFont0 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFont1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFont2 = GoogleFonts.poppins().copyWith(color: Colors.black);
TextStyle loginStyleBtn = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600);
Color grayColor = "8D92A3".toColor();
Color primaryColor = "FFC700".toColor();
Color secondaryColor = "FAFAFC".toColor();
// !TODO button style
final ButtonStyle loginBtn = ElevatedButton.styleFrom(
    onPrimary: primaryColor,
    primary: primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    minimumSize: Size(88, 24));
