import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(super.initialState);

  List<String> coffeeTypes = [
    "Espresso",
    "Cappuccino",
    "Latte",
    "Mocha",
    "Macchiato",
    "Americano",
  ];
}
