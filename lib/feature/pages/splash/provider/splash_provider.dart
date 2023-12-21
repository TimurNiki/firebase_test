// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(): super(const SplashState());
  
}
@immutable
class SplashState extends Equatable {
final bool? versionControl;
  const SplashState({
    this.versionControl,
  });
  
  @override
 
  List<Object?> get props => [versionControl];

  SplashState copyWith({
    bool? versionControl,
  }) {
    return SplashState(
      versionControl: versionControl ?? this.versionControl,
    );
  }
}
