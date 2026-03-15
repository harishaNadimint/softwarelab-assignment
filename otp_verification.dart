// import 'package:flutter/material.dart';
//  import 'package:flutter_svg/svg.dart';
//  import 'package:get/get.dart';
//  import 'package:getx_tutorials/widgets/custom_button/custom_button.dart';
//  import 'package:google_fonts/google_fonts.dart';
//  import 'package:pin_code_fields/pin_code_fields.dart';
//  import 'package:sizer/sizer.dart';
//  import '../widgets/app_color/app_color.dart';
//  import '../widgets/app_image/app_image.dart';
//  import 'otp_controller.dart';
 
//  class OtpVerificationScreen extends GetView {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20),
//             Text(
//               'OTP Verification',
//               style: styles(
//                   fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               'We have sent an OTP on given number +91 2224 555 333',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 20),
//             Obx(() {
//               return Text(
//                 controller.isCodeExpired.value
//                     ? "Your otp has expired please resend"
//                     : "00:${controller.remainingTime.value.toString().padLeft(2, '0')}",
//                 style: GoogleFonts.poppins(
//                   color: controller.isCodeExpired.value
//                       ? AppColors.appColor
//                       : AppColors.appColor,
//                   fontSize: 18,
//                 ),
//               );
//             }),
//             SizedBox(height: 4.h),
//             PinCodeTextField(
//               appContext: context,
//               length: 4,
//               onChanged: (value) {
//                 controller.update();
//               },
//               onCompleted: controller.onOTPComplete,
//               controller: controller.otpController,
//               autoDismissKeyboard: true,
//               enablePinAutofill: true,
//               pinTheme: PinTheme(
//                 shape: PinCodeFieldShape.box,
//                 borderRadius: BorderRadius.circular(15),
//                 fieldHeight: 75,
//                 fieldWidth: 75,
//                 activeColor: AppColors.appColor,
//                 activeFillColor: AppColors.appbarColor,
//                 selectedColor: AppColors.appColor,
//                 selectedFillColor: AppColors.btnColor,
//                 inactiveColor: Colors.grey,
//               ),
//             ),
//             const SizedBox(height: 20),
//             const SizedBox(height: 20),
//             Obx(
//               () => CustomButton(
//                 onPressed: controller.resendCode,
//                 backgroundColor: controller.otp.value.length == 4
//                     ? AppColors.appColor
//                     : controller.isCodeExpired.value
//                         ? AppColors.appColor
//                         : AppColors.btnColor,
//                 text:
//                     controller.isCodeExpired.value ? "Send Code Again" : 'Next',
//                 image: AppImages.rightArrow,
//                 imageColor: controller.isCodeExpired.value
//                     ? AppColors.white
//                     : controller.otp.value.length == 4
//                         ? AppColors.whiteColor
//                         : AppColors.optionIconColor,
//                 color: controller.isCodeExpired.value
//                     ? AppColors.white
//                     : controller.otp.value.length == 4
//                         ? AppColors.whiteColor
//                         : AppColors.optionIconColor,
//                ),
//              )
//            ],
//          ),
//        ),
//      );
//    }
//  }