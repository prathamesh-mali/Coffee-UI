import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartBloc extends Cubit<CartState> {
  CartBloc(super.initialState);
}
