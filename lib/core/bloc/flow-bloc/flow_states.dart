abstract class FlowState {}

class DashboardFlow extends FlowState {}

class LoadedDashboardFlow extends DashboardFlow {}

class SuccessfulRequestDashboard extends DashboardFlow {}

class LoadingCategory extends CategoryFlow {}

class SearchFlow extends FlowState {}

class ErrorFlow extends FlowState {
  String? error;
  ErrorFlow({this.error});
}

class ProfileFlow extends FlowState {}

class CategoryFlow extends FlowState {
  List<String>? names;
  CategoryFlow({this.names});
}

class InitialCategoryFlow extends CategoryFlow {}

class DetailedAdFlow extends CategoryFlow {
  String? cardata;

  DetailedAdFlow({this.cardata});
}
