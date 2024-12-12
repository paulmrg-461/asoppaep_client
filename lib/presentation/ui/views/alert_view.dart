import 'package:asoppaep_web/presentation/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  final Color color;
  final ScreenSizes screenSize;

  const AlertView({super.key, required this.color, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    double opacity = 1;

    // Lista de alertas dummy
    final List<Map<String, String>> alerts = [
      {
        'fecha': '2024-12-12 10:00',
        'nodo': 'Nodo 1',
        'tipo': 'Temperatura alta en el agua',
        'temperatura': '32°C',
      },
      {
        'fecha': '2024-12-12 09:30',
        'nodo': 'Nodo 2',
        'tipo': 'Nivel de oxígeno bajo',
        'temperatura': '28°C',
      },
      {
        'fecha': '2024-12-11 16:45',
        'nodo': 'Nodo 3',
        'tipo': 'Temperatura alta en el agua',
        'temperatura': '30°C',
      },
    ];

    // Ordenar las alertas por fecha descendente
    alerts.sort((a, b) => b['fecha']!.compareTo(a['fecha']!));

    return Container(
      color: color.withOpacity(opacity),
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Alertas Recientes',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Fecha del Evento')),
                DataColumn(label: Text('Nodo')),
                DataColumn(label: Text('Tipo de Evento')),
                DataColumn(label: Text('Temperatura')),
              ],
              rows: alerts.map((alert) {
                return DataRow(
                  cells: [
                    DataCell(Text(alert['fecha']!)),
                    DataCell(Text(alert['nodo']!)),
                    DataCell(Text(alert['tipo']!)),
                    DataCell(Text(alert['temperatura']!)),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
