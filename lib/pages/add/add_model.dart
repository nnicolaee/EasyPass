import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_widget.dart' show AddWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddModel extends FlutterFlowModel<AddWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for serie_card_in widget.
  FocusNode? serieCardInFocusNode;
  TextEditingController? serieCardInTextController;
  String? Function(BuildContext, String?)? serieCardInTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serieCardInFocusNode?.dispose();
    serieCardInTextController?.dispose();
  }
}
