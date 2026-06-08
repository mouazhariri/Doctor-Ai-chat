import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_smart_pro_app/src/application/router/app_router.dart';


part 'app_router_provider.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) {
  return AppRouter(ref);
}
