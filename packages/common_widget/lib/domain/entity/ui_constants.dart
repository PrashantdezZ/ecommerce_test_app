part of common_widget;

// final formatter = DateFormat('yyyy-MM-dd');

double get screenWidth => ScreenUtil().screenWidth;
double get screenHeight => ScreenUtil().screenHeight;
double screen_width(double _per) => screenWidth * _per;
double screen_height(double _per) => screenHeight * _per;

const TextStyle display = TextStyle(
    fontSize: 48, fontWeight: FontWeight.w100, fontFamily: 'Noto Sans');




//rent app colors
const kPrimary = Color(0xFFF63967);
const kRed250 = Color(0xFFFE735C);
const kRed300 = Color(0xFFEB3030);
const kPink = Color(0xFFFD6E87);
const kGrey800 = Color(0xFF242424);
const kGrey700 = Color(0xFF2F2F2F);
const kGrey750 = Color(0xFF344054);
const kGrey150 = Color(0xFFBBBBBB);
const kGrey200 = Color(0xFF505965);
const kGrey900 = Color(0xFF1C1C1C);
const kBlue = Color(0xFF007AFF);

const kGrey500 = Color(0xFF424242);
const kGrey450 = Color(0xFF656E7B);
const kGrey100 = Color(0xFFC4C4C4);
const kGrey50 = Color(0xFFECECEC);
const kSecondary = Color(0xFFCDEEFE);
const kBackground = Color(0xFFFDFDFD);
const kBorder = Color(0xFFE8E6EA);
const kTextPrimary100 = Color(0xFF000000);
const kBlack = Color(0xFF000000);
const kTextPrimarySecondary = Color(0xFF323755);
const kTextInactive = Color(0xFFADAFBB);

const kchatGreen = Color(0xFF2CC069);

// var kTextPrimary70 = Color.fromARGB(255, 73, 73, 73).withOpacity(0.7);
// const kTextPrimary100 = Color(0xFF000000);
// const kTextPrimary100 = Color(0xFF000000);
const kWhite = Color(0xFFFFFFFF);
const kRed200 = Color(0xFF21003D);
const kBlue400 = Color(0xFF4392F9);
const kActiveSilderColor = Color(0xFFFFA3B3);
const kDeactiveColor = Color(0xFFDEDBDB);
const kTextSecondary = Color(0xFF776B8A);
const kGreyColor = Color(0xFFD9D9D9);
const kGrey2Color = Color(0xFFD8D8D8);

const Color kLandingText = Color(0xFF4E3D67);

const pinkFill = Color(0xFFFFEAE9);

//End of Zil Figma Colors

String get reviewText =>
    'Delhi, India\'s capital territory, is a massive metropolitan area in the country\'s north. In Old Delhi, a neighbourhood dating to the 1600s, stands the imposing Mughal-era Red Fort, a symbol of India, and the sprawling Jama Masjid mosque, whose courtyard accomodates 25,000 people. Nearby is Chandni Chowk, a vibrant bazar filled with food cards, sweets shops and spice stalls.';

SizedBox sizedBoxHeight(double height) => SizedBox(height: height);

SizedBox sizedBoxWidth(double width) => SizedBox(width: width);

// AppBar appBar(BuildContext context, String title) => AppBar(
//       backgroundColor: kWhite,
//       elevation: .7,
//       leading: GestureDetector(
//         onTap: () => Navigator.of(context).pop(),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Icon(
//             CupertinoIcons.arrow_left,
//             color: kBlack,
//           ),
//         ),
//       ),
//       title: BoldText(title, 22, kBlack),
//     );

Widget BoldText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.poppins(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
          textStyle: TextStyle(overflow: TextOverflow.ellipsis)),
    );
Widget interBoldText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.inter(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
          textStyle: TextStyle(overflow: TextOverflow.ellipsis)),
    );
Widget MediumText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.poppins(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w500,
          textStyle: TextStyle(overflow: TextOverflow.ellipsis)),
    );
Widget SemiBoldText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.poppins(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w600,
          textStyle: TextStyle(overflow: TextOverflow.clip)),
    );
Widget RegularText(String txt, double fontSize, Color color,
    {Color? underlineColor, double? lineHeight, TextAlign? align}) {
  TextStyle textStyle = GoogleFonts.poppins(
    // textBaseline: ,

    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w400,
    textStyle: TextStyle(height: lineHeight ?? 1.2),
  );

  Widget textWithUnderline = Stack(
    children: [
      Text(
        txt,
        textAlign: align ?? TextAlign.center,
        style: textStyle,
        maxLines: 10,
      ),
      if (underlineColor != null)
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 1,
            color: underlineColor ??
                color, // Use text color as underline color by default
          ),
        ),
    ],
  );

  return textWithUnderline;
}
Widget RegularStrikedText(String text, double fontSize, Color color,
        {int? maxlines, TextAlign? textAlign, double? letterSpacing}) =>
    Text(text,
        textAlign: textAlign ?? TextAlign.left,
        maxLines: maxlines ?? 1,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: GoogleFonts.inter(
            decoration: TextDecoration.lineThrough,
            fontSize: fontSize,
            color: color,
            fontWeight: FontWeight.w400,
            letterSpacing: letterSpacing));
Widget GradientText(
  String txt,
  double fontSize, {
  Gradient? gradient, // Optional gradient
  Color? underlineColor,
  double? lineHeight,
  TextAlign? align,
}) {
  TextStyle textStyle = GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: FontWeight.w600,
  );

  Widget textWithUnderline = Stack(
    children: [
      if (gradient != null)
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return gradient.createShader(bounds);
          },
          child: Text(
            txt,
            textAlign: align ?? TextAlign.center,
            style:
                textStyle.copyWith(color: Colors.white), // Set color to white
          ),
        )
      else
        Text(
          txt,
          textAlign: align ?? TextAlign.center,
          style: textStyle,
        ),
      if (underlineColor != null)
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 1,
            // color: underlineColor,
            decoration: BoxDecoration(gradient: floatingButtonGradient),
          ),
        ),
    ],
  );

  return textWithUnderline;
}

Widget CenterAlignBoldText(String txt, double fontSize, Color? color) => Text(
      txt,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: color ?? kBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
Widget BoldBlackText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.w900,
      ),
    );

Widget BoldLineThroughText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        decoration: TextDecoration.lineThrough,
        fontWeight: FontWeight.bold,
      ),
    );
Widget regularLineThroughText(String txt, double fontSize, Color color) => Text(
      txt,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        color: color,
        decoration: TextDecoration.lineThrough,
        fontWeight: FontWeight.w500,
      ),
    );

Widget poppinsSemiBoldText(
        String txt, double fontSize, Color? color, int? maxlines) =>
    Text(
      maxLines: maxlines ?? 1,
      txt,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: color ?? kBlack,
          fontWeight: FontWeight.w600,
        ),
      ),
    );

Widget SemiCenterAlignBoldText(String txt, double fontSize, Color? color) =>
    Text(
      txt,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: color ?? kBlack,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
Widget SemiBoldLineThroughText(String txt, double fontSize, Color? color) =>
    Text(
      txt,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: color ?? kBlack,
          decoration: TextDecoration.lineThrough,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
var linearGradient = LinearGradient(
  begin: Alignment(2.19, -0.87),
  end: Alignment(-2.19, 0.87),
  colors: [Color(0xFFEE2A7B), Color(0xFFFD484F)],
);
var floatingButtonGradient = LinearGradient(
  begin: Alignment(0, 0.000),
  end: Alignment(0.75, -0.0051),
  colors: [Color(0xFFFD484F), Color(0xFFEE2A7B)],
);
var authGradient = LinearGradient(
  begin: Alignment(0, .75),
  end: Alignment(0, -2),
  colors: [Color(0xFFFD484F), Color(0xFFEE2A7B)],
);
var swipeGradient = LinearGradient(
  begin: Alignment(0, .75),
  end: Alignment(0, -2),
  colors: [
    Color.fromARGB(255, 218, 144, 247),
    Color.fromARGB(255, 146, 90, 248)
  ],
);

var textStyle = TextStyle(
  color: Colors.white,
  fontSize: 42,
  fontFamily: 'PoetsenOne',
  fontWeight: FontWeight.w400,
  height: 0,
);
List<String> trendingCollectionImages = [
  Assets.images.banner1,
  Assets.images.discount,
  Assets.images.banner1,
];
List<String> categoryImages = [
  Assets.images.fashion,
  Assets.images.mens,
  Assets.images.women,
  Assets.images.makeup,
  Assets.images.mensgroup,
  Assets.images.mensgroup,
];
List<String> images1 = [
  Assets.images.shoes,
  Assets.images.kurta,
];
List<String> images2 = [
  Assets.images.white_shoes,
  Assets.images.watch,
];