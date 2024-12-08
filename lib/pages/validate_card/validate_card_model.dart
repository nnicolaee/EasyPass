import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'validate_card_widget.dart' show ValidateCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValidateCardModel extends FlutterFlowModel<ValidateCardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for numarLinie widget.
  FocusNode? numarLinieFocusNode;
  TextEditingController? numarLinieTextController;
  String? Function(BuildContext, String?)? numarLinieTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numarLinieFocusNode?.dispose();
    numarLinieTextController?.dispose();
  }
}
