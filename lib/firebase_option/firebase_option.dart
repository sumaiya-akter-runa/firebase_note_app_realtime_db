
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyAhSl9bNv15t8rh1RvhwWqORWKFuVd88FM',
      appId: '1:235281814191:android:42e57c8cf10f69d9b7fa5a',
      messagingSenderId: '1027663435064',
      projectId: 'super-note-c5dcf',
      storageBucket: 'super-note-c5dcf.firebasestorage.app',
      databaseURL:
      'https://super-note-c5dcf-default-rtdb.firebaseio.com/');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyAhSl9bNv15t8rh1RvhwWqORWKFuVd88FM',
      appId: '1:235281814191:android:42e57c8cf10f69d9b7fa5a',
      messagingSenderId: '1027663435064',
      projectId: 'super-note-c5dcf',
      storageBucket: 'super-note-c5dcf.firebasestorage.app',
      iosBundleId: 'com.myapp.firebase_note_app_realtime_db',
      databaseURL:
      'https://super-note-c5dcf-default-rtdb.firebaseio.com/');
}