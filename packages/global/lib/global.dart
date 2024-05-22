library global;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
export 'package:bloc/bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncError;
import 'package:flutter/foundation.dart';

import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
export 'package:dob_input_field/dob_input_field.dart';
export 'data/models/session_info_model.dart';
export 'package:logger/logger.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:dio/dio.dart';
export 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location/location.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
export 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// export 'package:insta_assets_picker/insta_assets_picker.dart';
export 'package:image_picker/image_picker.dart';
export 'package:go_router/go_router.dart';
export 'dart:async';
// export 'dart:convert';
export 'package:geolocator/geolocator.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart' hide AsyncError;
export 'package:google_fonts/google_fonts.dart';
export 'package:flutter_svg/flutter_svg.dart';
// export 'package:permission_handler/permission_handler.dart';
// export 'package:location/location.dart';
export 'package:carousel_slider/carousel_slider.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'dart:io' hide interface;
export 'package:firebase_auth/firebase_auth.dart';
export 'package:path_provider/path_provider.dart';
export 'package:pinput/pinput.dart';
// export 'package:hasura_connect/hasura_connect.dart';
export 'dart:math' hide interface;
// import 'package:flutter_masked_text/flutter_masked_text.dart';
// export 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
// import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
part 'domain/entity/api_constant.dart';
part 'data/models/property_model.dart';
// part 'data/services/api_base_services.dart';
part 'data/services/storage_service.dart';
part 'data/services/product_services.dart';
// part 'product_services.dart';

                                                // Models //
part 'data/models/user_model.dart';
part 'data/models/product_model.dart';


