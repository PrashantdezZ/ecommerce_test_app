import 'package:ecommerce_app/app.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:global/global.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FirebaseFirestore.instance.settings =
  //     const Settings(persistenceEnabled: true);

  runApp(MyApp());
}