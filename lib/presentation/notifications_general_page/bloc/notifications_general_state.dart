// ignore_for_file: must_be_immutable

part of 'notifications_general_bloc.dart';

/// Represents the state of NotificationsGeneral in the application.
class NotificationsGeneralState extends Equatable {
  NotificationsGeneralState({this.notificationsGeneralModelObj});

  NotificationsGeneralModel? notificationsGeneralModelObj;

  @override
  List<Object?> get props => [
        notificationsGeneralModelObj,
      ];
  NotificationsGeneralState copyWith(
      {NotificationsGeneralModel? notificationsGeneralModelObj}) {
    return NotificationsGeneralState(
      notificationsGeneralModelObj:
          notificationsGeneralModelObj ?? this.notificationsGeneralModelObj,
    );
  }
}
