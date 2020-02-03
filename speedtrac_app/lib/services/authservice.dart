import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:speedtrac_app/models/User.dart';

class AuthService {
  // need to possibly declare facebook or twitter users here too
  final FirebaseAuth _authInstance = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User _UserFromFirebaseUser(FirebaseUser firebaseUser) {
    // if firebase user is null, return null. Otherwise, return a user.
    return firebaseUser == null ? null : User(uid: firebaseUser.uid);


  }


// sign in with Google (should be async and we should await this)
Future<FirebaseUser> signInWithGoogle() async {

    // declare instances of sign in account, and sign in auths for that account
    // google will sign in and authenticate the user here
    final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    // declare a credential to be associated with the sign in auth instance for the same account above
    // after signing in and authenticating the user, credentials will be created for use in firebase
    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    // sign in a Firebase user with the credentials provided by google
    final AuthResult authResult = await _authInstance.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _authInstance.currentUser();
    assert(user.uid == currentUser.uid);

    return user;
}

void signOutGoogle() async{
    await _googleSignIn.signOut();
    print("user signed out!");
}

// sign in with FB    (should be async and we should await this)


// sign in with Email (should be async and we should await this)


// sign in with Phone (should be async and we should await this)


// sign in with Twitter (should be async and we should await this)


}





