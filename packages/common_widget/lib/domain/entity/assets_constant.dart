part of common_widget;

mixin Assets {
  static AssetIcons get icons => AssetIcons();
  static AssetFileIcons get fileIcons => AssetFileIcons();
  static AssetImages get images => AssetImages();
  static CommonAssetImages get common_images => CommonAssetImages();
  static AssetJson get json => AssetJson();
  static AssetLotties get lotties => AssetLotties();
  static AssetPdf get pdf => AssetPdf();
  static AssetLanguages get languages => AssetLanguages();
  static AssetSounds get sounds => AssetSounds();
  static AssetFonts get fonts => AssetFonts();
}

class AssetIcons {
  String location = 'packages/common_widget/assets/icons';

  String get filter => '$location/menu.svg';
  String get sort => '$location/sort.svg';
  String get menu => '$location/filter.svg';
  String get home => '$location/home.svg';
  String get search => '$location/search.svg';
  String get settings => '$location/settings.svg';
  String get heart => '$location/heart.svg';
  String get cart => '$location/cart.svg';
}

class AssetFileIcons {
  String location = 'assets/file_icons';
  String get doc => '$location/DOC.svg';
  String get gif => '$location/GIF.svg';
  String get iso => '$location/ISO.svg';
  String get jpg => '$location/JPG.svg';
  String get mkv => '$location/MKV.svg';
  String get mov => '$location/MOV.svg';
  String get mp3 => '$location/MP3.svg';
  String get mp4 => '$location/MP4.svg';
  String get mpe => '$location/MPE.svg';
  String get mpg => '$location/MPG.svg';
  String get pdf => '$location/PDF.svg';
  String get png => '$location/PNG.svg';
  String get ppt => '$location/PPT.svg';
  String get psd => '$location/PSD.svg';
  String get rar => '$location/RAR.svg';
  String get svg => '$location/SVG.svg';
  String get sys => '$location/SYS.svg';
  String get txt => '$location/TXT.svg';
  String get xls => '$location/XLS.svg';
  String get zip => '$location/ZIP.svg';
}

class AssetImages {
  String location = 'packages/common_widget/assets/images';

  String get defaultImage => '$location/dailydealsimg.png';
  String get prashant => '$location/prashant.jpg';

  String get logo => '$location/logo.png';
  String get mens => '$location/mens.png';
  String get fashion => '$location/fashion.png';
  String get women => '$location/women.png';
  String get makeup => '$location/makeup.png';
  String get mensgroup => '$location/mensgroup.png';
  String get discount => '$location/discount.png';
  String get banner1 => '$location/banner1.png';
  String get shoes => '$location/shoes.png';
  String get white_shoes => '$location/white_shoes.png';
  String get sale => '$location/sale.png';
  String get kurta => '$location/kurta.png';
  String get watch => '$location/watch.png';
}

class CommonAssetImages {
  String location = 'packages/common_widget/assets/images';

  String get logo => '$location/logo2.png';
  String get google => '$location/google.png';
  String get splash_bg => '$location/splash_bg.png';
}

class AssetJson {
  String location = 'assets/json';

  String get countries => '$location/countries.json';
  String get not_found => '$location/countries.json';
}

class AssetLotties {
  String location = 'assets/json/lottie';
  String get not_found => '$location/404.json';
  String get no_internet => '$location/no_internet.json';
  String get success => '$location/success.json';
  String get search => '$location/search.json';
  String get login => '$location/login.json';
  String get confirm => '$location/confirm.json';
  String get otp => '$location/otp.json';
  String get otp_verify => '$location/otp_loading.json';
  String get empty => '$location/empty.json';
}

class AssetPdf {
  String location = 'assets/pdf';
  String get cancel_policy => '$location/cancel.pdf';
  String get privacy_policy => '$location/privacy.pdf';
}

class AssetLanguages {
  String location = 'assets/languages';
}

class AssetSounds {
  String location = 'assets/sounds';

  String get beep_error => '$location/beep-error.mp3';
  String get beep_success => '$location/beep-success.mp3';
}

class AssetFonts {
  String location = 'assets/fonts/poetsenone';

  String get poetsenone => '$location/PoetsenOne-Regular.ttf';
  String get beep_success => '$location/beep-success.mp3';
}
