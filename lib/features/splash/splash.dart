import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_smart_pro_app/features/chat/data/chat_hive_adapters.dart';
import 'package:my_smart_pro_app/features/chat/data/hive_adapters.dart';
import 'package:my_smart_pro_app/features/chat/presentation/screen/sessions_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    // Initialize Hive
    await Hive.initFlutter();

    // // Register adapters
    // if (!Hive.isAdapterRegistered(0)) {
    //   Hive.registerAdapter(ChatSessionAdapter());
    // }
    // if (!Hive.isAdapterRegistered(1)) {
    //   Hive.registerAdapter(ChatMessageAdapter());
    // }
    // if (!Hive.isAdapterRegistered(2)) {
    //   Hive.registerAdapter(AttachedFileAdapter());
    // }

    // Wait for splash animation
    await Future.delayed(const Duration(milliseconds: 2500));

    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, animation, __) => const SessionsScreen(),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1565C0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ── Logo ───────────────────────────────────────────────────────
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: const Icon(
                Icons.medical_services_rounded,
                size: 64,
                color: Color(0xFF1565C0),
              ),
            )
                .animate()
                .scale(
                  begin: const Offset(0.5, 0.5),
                  duration: 600.ms,
                  curve: Curves.elasticOut,
                )
                .fadeIn(duration: 400.ms),

            const SizedBox(height: 32),

            // ── App Name ───────────────────────────────────────────────────
            const Text(
              'Doctor AI',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            )
                .animate()
                .fadeIn(delay: 400.ms, duration: 500.ms)
                .slideY(begin: 0.3, end: 0),

            const SizedBox(height: 8),

            Text(
              'Your Medical AI Assistant',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.8),
                letterSpacing: 0.5,
              ),
            )
                .animate()
                .fadeIn(delay: 600.ms, duration: 500.ms)
                .slideY(begin: 0.3, end: 0),

            const SizedBox(height: 64),

            // ── Loading Indicator ──────────────────────────────────────────
            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white.withOpacity(0.8),
                ),
                strokeWidth: 2,
              ),
            )
                .animate()
                .fadeIn(delay: 800.ms, duration: 400.ms),

            const SizedBox(height: 16),

            Text(
              'Initializing...',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white.withOpacity(0.6),
              ),
            )
                .animate()
                .fadeIn(delay: 900.ms, duration: 400.ms),
          ],
        ),
      ),
    );
  }
}