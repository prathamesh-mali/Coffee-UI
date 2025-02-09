import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsState.initial());

  List<String> sizes = ["S", "M", "L"];
  List<double> prices = [4.99, 5.99, 6.99];
}
