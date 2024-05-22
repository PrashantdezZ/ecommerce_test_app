part of common_widget;

class Routes {
  static String landing = '/landing';
  static String login = '/login-with-phone';
  static String signup = '/signup';
  static String verifyOtp = '/verify-otp';
  static String userName = '/user-name';
  static String userGender = '/gender-register';
  static String datingPreference = '/dating-preference';
  static String genderPreference = '/gender-preferences';
  static String ageRegistration = '/user-age';
  static String distanceRegistration = '/distance-preference';
  static String homePage = '/home-page';
  static String authRoute = '/authroute';
  static String signInWithSocail = '/signin-with-social';
  static String userInterest = '/user-interest';
  static String imageRegistration = '/image-Registration';
  static String registrationFlow = '/user-registration-flow';
  static String userAgree = '/user-agree';
  static String chatHome = '/chat-home';
}

mixin GoRoutes {
  static final routes = <RouteBase>[
    GoRoute(
      name: 'initial',
      path: '/',
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    
   
  ];
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: routes,
  );
}
