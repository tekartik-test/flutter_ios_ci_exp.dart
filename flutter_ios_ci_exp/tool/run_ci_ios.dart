import 'package:tekartik_build_menu_flutter/app_build_menu.dart';
import 'package:process_run/shell_run.dart';

import 'dart:io';

import 'package:path/path.dart';

var appTest1Path = join('.dart_tool', 'test', 'exp1');
Future<void> main() async {
  var appPath = appTest1Path;
  await deleteDir(appPath);
  var shell = Shell();

  await shell.run('flutter create --template app --platforms ios --ios-language objc ${shellArgument(appPath)}');
  shell = shell.cd(appPath);
  await shell.run('flutter build ios --debug');
}