import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBRQCuvN6ZZMXxYPfSPGJFp_e6wW9ERmKk",
            authDomain: "hamigo-2aa37.firebaseapp.com",
            projectId: "hamigo-2aa37",
            storageBucket: "hamigo-2aa37.appspot.com",
            messagingSenderId: "713217290140",
            appId: "1:713217290140:web:af2ff1e88853340d772259",
            measurementId: "G-833Z80NRJM"));
  } else {
    await Firebase.initializeApp();
  }
}
