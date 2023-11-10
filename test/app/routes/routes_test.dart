import 'package:flutter/material.dart';
import 'package:n_news/app/app.dart';
import 'package:n_news/home/home.dart';
import 'package:n_news/onboarding/onboarding.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('onGenerateAppViewPages', () {
    test('returns [OnboardingPage] when onboardingRequired', () {
      expect(
        onGenerateAppViewPages(AppStatus.onboardingRequired, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<OnboardingPage>(),
          )
        ],
      );
    });

    test('returns [HomePage] when authenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.authenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<HomePage>(),
          )
        ],
      );
    });

    test('returns [HomePage] when unauthenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.unauthenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<HomePage>(),
          )
        ],
      );
    });
  });
}
