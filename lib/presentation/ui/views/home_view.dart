import 'package:asoppaep_web/presentation/ui/screens/home_screen.dart';
import 'package:asoppaep_web/presentation/ui/shared/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final Color color;
  final ScreenSizes screenSize;
  const HomeView({super.key, required this.color, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCard(
          title: 'Niveles de oxígeno',
          widget: const SizedBox(
            width: 120, // Ancho del CircularProgressIndicator
            height: 120, // Alto del CircularProgressIndicator
            child: CircularProgressIndicator(
              value: 0.12, // Representa el 12%
              strokeWidth: 12,
              backgroundColor: Colors.black12,
            ),
          ),
          secondaryWidget: Text(
            '12%',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          tertiaryWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Niveles de Oxígeno Actuales',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Divider(),
              const Text('Nivel Actual de Oxígeno: 12% (2.4 mg/L)'),
              const Text('Estado del Oxígeno: Crítico'),
              const Divider(),
              const Text('Historial:'),
              ...['15%', '14%', '13%', '12%']
                  .map((reading) => Text('- $reading'))
                  .toList(),
            ],
          ),
          icon: Icons.oil_barrel_rounded,
        ),
        CustomCard(
          title: 'Nivel de Batería',
          widget: const SizedBox(
            width: 120,
            height: 120,
            child: const CircularProgressIndicator(
              value: 0.85, // Representa el 85%
              strokeWidth: 12,
              backgroundColor: Colors.black12,
            ),
          ),
          secondaryWidget: Text(
            '85%',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          tertiaryWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Información de la Batería',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Divider(),
              const Text('Estado: Cargando'),
              const Divider(),
              const Text('Voltaje: 3.7V'),
              const Text('Salud: Buena'),
              const Text('Duración estimada: 4 horas, 30 minutos'),
              const Text('Ciclos Completados: 120/500'),
              const Divider(),
              const Text('Temperatura: 30°C'),
            ],
          ),
          icon: Icons.battery_charging_full_rounded,
        ),
      ],
    );
  }
}
