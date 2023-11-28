import 'bloc/add_new_education_bloc.dart';import 'models/add_new_education_model.dart';import 'package:bluecrew/core/app_export.dart';import 'package:bluecrew/widgets/app_bar/appbar_image.dart';import 'package:bluecrew/widgets/app_bar/appbar_title.dart';import 'package:bluecrew/widgets/app_bar/custom_app_bar.dart';import 'package:bluecrew/widgets/custom_drop_down.dart';import 'package:bluecrew/widgets/custom_elevated_button.dart';import 'package:bluecrew/widgets/custom_outlined_button.dart';import 'package:bluecrew/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class AddNewEducationScreen extends StatelessWidget {const AddNewEducationScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddNewEducationBloc>(create: (context) => AddNewEducationBloc(AddNewEducationState(addNewEducationModelObj: AddNewEducationModel()))..add(AddNewEducationInitialEvent()), child: AddNewEducationScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(48), leading: AppbarImage(svgPath: ImageConstant.imgGroup162799, margin: getMargin(left: 24, top: 13, bottom: 13), onTap: () {onTapArrowbackone(context);}), centerTitle: true, title: AppbarTitle(text: "msg_add_new_education".tr)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 32), child: Padding(padding: getPadding(left: 24, right: 24, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_school".tr, style: theme.textTheme.titleSmall), BlocSelector<AddNewEducationBloc, AddNewEducationState, TextEditingController?>(selector: (state) => state.frameOneController, builder: (context, frameOneController) {return CustomTextFormField(controller: frameOneController, margin: getMargin(top: 9), hintText: "msg_ex_harvard_university".tr, hintStyle: CustomTextStyles.titleMediumBluegray400);}), Padding(padding: getPadding(top: 20), child: Text("lbl_degree".tr, style: theme.textTheme.titleSmall)), BlocSelector<AddNewEducationBloc, AddNewEducationState, AddNewEducationModel?>(selector: (state) => state.addNewEducationModelObj, builder: (context, addNewEducationModelObj) {return CustomDropDown(icon: Container(margin: getMargin(left: 30, right: 24), child: CustomImageView(svgPath: ImageConstant.imgArrowdownGray900)), margin: getMargin(top: 7), hintText: "lbl_ex_bachelor".tr, hintStyle: CustomTextStyles.titleMediumBluegray400, items: addNewEducationModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<AddNewEducationBloc>().add(ChangeDropDownEvent(value: value));});}), Padding(padding: getPadding(top: 20), child: Text("lbl_field_of_study".tr, style: theme.textTheme.titleSmall)), BlocSelector<AddNewEducationBloc, AddNewEducationState, TextEditingController?>(selector: (state) => state.frameoneoneController, builder: (context, frameoneoneController) {return CustomTextFormField(controller: frameoneoneController, margin: getMargin(top: 7), hintText: "lbl_ex_business".tr, hintStyle: CustomTextStyles.titleMediumBluegray400);}), Padding(padding: getPadding(top: 18), child: Text("lbl_start_date".tr, style: theme.textTheme.titleSmall)), CustomOutlinedButton(height: getVerticalSize(52), text: "lbl_select_date".tr, margin: getMargin(top: 9), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgCalendar)), buttonStyle: CustomButtonStyles.outlineIndigo, buttonTextStyle: CustomTextStyles.titleMediumBluegray400, onTap: () {onTapSelectdate(context);}), Padding(padding: getPadding(top: 18), child: Text("lbl_end_date".tr, style: theme.textTheme.titleSmall)), CustomOutlinedButton(height: getVerticalSize(52), text: "lbl_select_date".tr, margin: getMargin(top: 9), rightIcon: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgCalendar)), buttonStyle: CustomButtonStyles.outlineIndigo, buttonTextStyle: CustomTextStyles.titleMediumBluegray400, onTap: () {onTapSelectdate1(context);}), Padding(padding: getPadding(top: 18), child: Text("lbl_grade".tr, style: theme.textTheme.titleSmall)), BlocSelector<AddNewEducationBloc, AddNewEducationState, TextEditingController?>(selector: (state) => state.frameonetwoController, builder: (context, frameonetwoController) {return CustomTextFormField(controller: frameonetwoController, margin: getMargin(top: 9), hintText: "lbl_ex_business".tr, hintStyle: CustomTextStyles.titleMediumBluegray400);}), Padding(padding: getPadding(top: 20), child: Text("lbl_description".tr, style: theme.textTheme.titleSmall)), BlocSelector<AddNewEducationBloc, AddNewEducationState, TextEditingController?>(selector: (state) => state.groupEightyOneController, builder: (context, groupEightyOneController) {return CustomTextFormField(controller: groupEightyOneController, margin: getMargin(top: 7), hintText: "lbl_lorem_ipsun".tr, hintStyle: CustomTextStyles.titleMediumBluegray400, textInputAction: TextInputAction.done, maxLines: 6, contentPadding: getPadding(left: 16, top: 20, right: 16, bottom: 20));})])))), bottomNavigationBar: CustomElevatedButton(text: "lbl_save_changes".tr, margin: getMargin(left: 24, right: 24, bottom: 37), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapSavechanges(context);}))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowbackone(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the experienceSettingScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the experienceSettingScreen.
onTapSavechanges(BuildContext context) { NavigatorService.pushNamed(AppRoutes.experienceSettingScreen, ); } 

/// Displays a date picker dialog to update the selected date
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapSelectdate(BuildContext context) async  { var initialState = BlocProvider.of<AddNewEducationBloc>(context).state;DateTime? dateTime  = await showDatePicker(context: context, initialDate: DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); } 

/// Displays a date picker dialog to update the selected date
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapSelectdate1(BuildContext context) async  { var initialState = BlocProvider.of<AddNewEducationBloc>(context).state;DateTime? dateTime  = await showDatePicker(context: context, initialDate: DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); } 
 }