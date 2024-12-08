import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDyEZki5R6ObNuBSMj8lBKrW-NWmQkMzPw",
            authDomain: "polihec-0h9k7n.firebaseapp.com",
            projectId: "polihec-0h9k7n",
            storageBucket: "polihec-0h9k7n.firebasestorage.app",
            messagingSenderId: "570883573242",
            appId: "1:570883573242:web:18144017a9c19c56d21043"));
  } else {
    await Firebase.initializeApp();
  }
}
