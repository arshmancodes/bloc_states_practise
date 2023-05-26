import 'package:flutter_application_2/core/bloc/flow-bloc/flow_states.dart';
import 'package:flutter_application_2/core/repositories/category_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlowCubit extends Cubit<FlowState> {
  CategoryRepository _categoryRepository = CategoryRepository();
  List<String>? names;
  String? currentAd;
  FlowCubit() : super(DashboardFlow());

  void dashboardScreen() {
    emit(DashboardFlow());
  }

  void categoryScreen() async {
    try {
      var result = await _categoryRepository.getCategories();
      names = result;
      emit(CategoryFlow(names: result));
    } catch (e) {
      emit(ErrorFlow(error: e.toString()));
    }
  }

  void detailedAd(String adname) {
    //List<CarData> cardata
    //ListView.builder(itemCount: cardata.length, itemBuilder:(context, index) {
    //return ListTile(title: cardata[index],
    //onTap: () {
    //  context.read<FlowCubit>().detailedAd(cardata[index]);
    //}) })
    currentAd = adname;
    emit(DetailedAdFlow(cardata: adname));
  }

  void searchScreen() {
    emit(SearchFlow());
  }

  void goBackFromDetailedAd() {
    emit(InitialCategoryFlow());
  }

  void profileScreen() {
    emit(ProfileFlow());
  }
}
