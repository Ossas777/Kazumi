import 'dart:io';
import 'package:kazumi/pages/plugin_editor/plugin_view_page.dart';
import 'package:kazumi/pages/plugin_editor/plugin_editor_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PluginModule extends Module {
  @override
  void binds(i) {
    
  }

  @override
  void routes(r) {
    r.child("/", child: (_) => const PluginViewPage());
    r.child("/editor",
        child: (_) => const PluginEditorPage(),
        transition: Platform.isWindows || Platform.isLinux || Platform.isMacOS
            ? TransitionType.noTransition
            : TransitionType.leftToRight);
  }
}