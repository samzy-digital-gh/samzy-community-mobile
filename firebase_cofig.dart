// firebase_config.dart
import 'package:firebase_core/firebase_core.dart';

class FirebaseConfig {
  static const String apiKey = "AIzaSyBkgwVFe1PMYMvmZxoFVFErZ27Q3XYQ-_g";
  static const String authDomain = "samzy-community-blog.firebaseapp.com";
  static const String projectId = "samzy-community-blog";
  static const String storageBucket = "samzy-community-blog.firebasestorage.app";
  static const String messagingSenderId = "573240466296";
  static const String appId = "1:573240466296:web:5faa312a1136162961468d";

  static Future<FirebaseApp> initialize() async {
    return Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: apiKey,
        authDomain: authDomain,
        projectId: projectId,
        storageBucket: storageBucket,
        messagingSenderId: messagingSenderId,
        appId: appId,
      ),
    );
  }
}