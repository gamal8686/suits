import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suits/core/logic/dio_helper.dart';

import '../../../core/logic/helper_methods.dart';

class CubitLogin extends Cubit<DataState>{
  CubitLogin():super(DataState.init);

  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> sendData()async{
emit(DataState.loading);
    final resp= await DioHelper.sendData();
    if(resp.isSuccess){
      emit(DataState.success);

      showMessage(resp.mag);
    } else {
      emit(DataState.field);

      showMessage(resp.mag, isError: true);
    }
  }



}