// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;
// //final Firestore _firestore = Firestore.instance;

// // Sign in with email and password
// Future<void> signIn(String email, String password) async {
//   try {
//     UserCredential result = await _auth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     User? user = result.user;
//     if (user != null) {
//       // Do something with the signed in user
//     }
//   } catch (e) {
//     print(e.toString());
//   }
// }

// // Sign up with email, password, and confirm password
// Future<void> signUp(String email, String password, String confirmPassword,
//     String firstName, String lastName, String phone) async {
//   if (password != confirmPassword) {
//     // Handle error
//     try {
//       UserCredential result = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       User? user = result.user;
//       if (user != null) {
//         // Saving the rest of the user's data to Firestore
//        // _firestore.collection("users").document(user.uid).setData(
//          //   {'firstName': firstName, 'lastName': lastName, 'phone': phone});
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
