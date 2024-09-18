part of 'bottom_navigation_cubit.dart';

sealed class BottomNavigationState extends Equatable {
  final int currentIndex;
  const BottomNavigationState(this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}

final class BottomNavigationInitial extends BottomNavigationState {
  const BottomNavigationInitial() : super(0);
}

class BottomNavigationUpdated extends BottomNavigationState {
  const BottomNavigationUpdated(super.currentIndex);
}
