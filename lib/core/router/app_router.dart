import 'package:go_router/go_router.dart';
import 'package:myapp/features/irrigacao/presentation/pages/home_page.dart';
import 'package:myapp/features/irrigacao/presentation/pages/leitura_form_page.dart';
import 'package:myapp/features/irrigacao/presentation/pages/talhao_form_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/talhao/:id/novo-registro',
      builder: (context, state) {
        final talhaoId = state.pathParameters['id']!;
        return LeituraFormPage(talhaoId: talhaoId);
      },
    ),
    GoRoute(
      path: '/talhao/novo',
      builder: (context, state) => const TalhaoFormPage(),
    ),
  ],
);
