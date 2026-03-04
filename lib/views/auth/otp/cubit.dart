import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';

class CubitOtp extends Cubit<DataState> {
  CubitOtp(
      this.phoneOtp
      ) : super(DataState.init);

  final otp = TextEditingController();
  final String phoneOtp;
  Future<void> sendData() async {
    emit(DataState.loading);
    final resp = await DioHelper.sendData(pass: '');
    if (resp.isSuccess) {
      emit(DataState.success);

      showMessage(resp.mag);
    } else {
      emit(DataState.field);

      showMessage(resp.mag, isError: true);
    }
  }
}
