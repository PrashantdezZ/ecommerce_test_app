part of common_widget;

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int currentPos = 0;
  int index = 0;
  final List<Widget> screens = [
    HomePage(),
    FavoriteScreen(),
    SerachScreen(),
SettingScreen()
    
  ];

  var destinations = [
    NavigationDestination(
      selectedIcon: SvgPicture.asset(Assets.icons.home, color: kRed300),
      icon: SvgPicture.asset(Assets.icons.home, color: kBlack),
      label: '',
    ),
    NavigationDestination(
      selectedIcon: SvgPicture.asset(Assets.icons.heart, color: kRed300),
      icon: SvgPicture.asset(Assets.icons.heart, color: kBlack),
      label: '',
    ),
    NavigationDestination(
      selectedIcon: SvgPicture.asset(Assets.icons.search, color: kRed300),
      icon: SvgPicture.asset(Assets.icons.search, color: kBlack),
      label: '',
    ),
    NavigationDestination(
      selectedIcon: SvgPicture.asset(Assets.icons.settings, color: kRed300),
      icon: SvgPicture.asset(Assets.icons.settings, color: kBlack),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: SafeArea(
          child: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: kWhite,
              indicatorColor: Colors.transparent,
              labelTextStyle: MaterialStateProperty.all(GoogleFonts.tajawal(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: kRed300),
              ))),
          child: NavigationBar(
            height: 60,
            backgroundColor: kWhite,
            elevation: 1,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: destinations,
          ),
        ),
        body: screens[index],
      )),
    );
  }
}
