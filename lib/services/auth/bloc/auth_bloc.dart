import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hackathon_flutter_2019/services/auth/bloc/bloc.dart';
import 'package:hackathon_flutter_2019/services/auth/auth.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserService _userService;

  AuthenticationBloc({@required UserService userService})
      : assert(userService != null),
        _userService = userService;
}
