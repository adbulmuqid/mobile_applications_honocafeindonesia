import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyABhjqrztcFHiC1_JKN-B2YcQVq3QB6aO0",
            authDomain: "honocaffesurabaya-mjz5yx.firebaseapp.com",
            projectId: "honocaffesurabaya-mjz5yx",
            storageBucket: "honocaffesurabaya-mjz5yx.appspot.com",
            messagingSenderId: "531789780221",
            appId: "1:531789780221:web:674cdf538bdd98440e9a94"));
  } else {
    await Firebase.initializeApp();
  }
}
