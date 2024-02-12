import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_state.dart';

  class ProductCubit extends Cubit<ProductState> {
    ProductCubit() : super(ProductInitial());

    static ProductCubit get(context)=>BlocProvider.of(context);

    bool isDetailsShow=false;
    changeDetailsShow(){
      isDetailsShow=!isDetailsShow;
      emit(ChangeDetailsShowState());
    }

  }

