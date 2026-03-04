import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suits/core/logic/dio_helper.dart';
import 'package:suits/core/logic/helper_methods.dart';

class CubitForgotPassword extends Cubit<DataState> {
  final phone=TextEditingController();
  CubitForgotPassword() : super(DataState.init);
  bool isSelected = true;

  Future<void> sendData() async {
    emit(DataState.loading);
    final resp = await DioHelper.sendData(pass: '');
    if (resp.isSuccess) {
      emit(DataState.success);
      final model = resp.data;
      // CashHelper.saveUserData(model);
    } else {
      emit(DataState.field);
      showMessage('is Error',isError: true);
    }
  }
}
