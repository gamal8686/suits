
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suits/core/logic/dio_helper.dart';

import '../../../core/logic/helper_methods.dart';
class CubitCreateNewAccount extends Cubit<DataState>{
  CubitCreateNewAccount():super(DataState.init);

  final formKey = GlobalKey<FormState>();
  final password = TextEditingController();
  final newPassword = TextEditingController();

  Future<void> sendData() async {
    emit(DataState.loading);
    final resp = await DioHelper.sendData(pass:'');
    if (resp.isSuccess) {
      emit(DataState.success);

      showMessage(resp.mag);
    } else {
      emit(DataState.field);

      showMessage(resp.mag, isError: true);
    }
  }

}