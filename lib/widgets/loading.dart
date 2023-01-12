import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gpt_chat_rebuild/config/app_color.dart';

Center kLoadingSpinner = const Center(
  child: SpinKitCircle(
    color: AppColors.primary,
    size: 50.0,
  ),
);
