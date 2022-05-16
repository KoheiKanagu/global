import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:yaml/yaml.dart';

void main(List<String> args) => grind(args);

@DefaultTask()
void activate() {
  final pubspec = loadYaml(
    File('pubspec.yaml').readAsStringSync(),
  ) as YamlMap;

  final dependencies = pubspec['dependencies'] as YamlMap;

  for (final e in dependencies.keys) {
    final package = e as String;
    if (package == 'yaml') {
      continue;
    }
    log('=====');
    run(
      'dart',
      arguments: [
        'pub',
        'global',
        'activate',
        e,
      ],
    );
  }
}
