import 'package:flutter/material.dart';

import 'controller.dart';

class FormController extends BaseController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
}
