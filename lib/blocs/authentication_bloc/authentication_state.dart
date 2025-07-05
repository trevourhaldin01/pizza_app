part of 'authentication_bloc.dart';

enum AuthenticationStatus {authenticated, unauthenticated, unknown}

// In Dart, the underscore (_) at the end of a constructor name (like AuthenticationState._) means that this is a named private constructor.

// What does it mean?
// The underscore makes the constructor private to the library (the file or files with part of/part).
// You cannot create an AuthenticationState using AuthenticationState._() from outside this library.
// You can only use this constructor inside the same library (often for custom factory constructors or internal logic).
// Use case
// With underscore:
// Use when you want to control how instances are created, often with factory constructors or static methods. It hides the constructor from outside code.
// Without underscore:
// The constructor is public, and anyone can create an instance using it.

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user
  });

  final AuthenticationStatus status;
  final MyUser? user;

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(MyUser myUser) :
    this._(status: AuthenticationStatus.authenticated, user: myUser);
  
  const AuthenticationState.unauthenticated() : 
    this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, user];
}
