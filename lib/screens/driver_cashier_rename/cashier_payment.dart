//Step 6 for the process
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cobranza de Venta"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              child: const Text('Ok'),
              onPressed: () {
                return;
              },
            ),
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    enabled: false,
                    initialValue:
                        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                    decoration: const InputDecoration(
                        filled: true, hintText: '20/03/23', labelText: 'Fecha'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '0123',
                        labelText: 'Nro de Orden de Salida'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '123456',
                        labelText: 'Nro de Camión'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'ABC1234',
                        labelText: 'Nro de Placa',
                        prefixText: ''),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'Juan Perez',
                        labelText: 'Nombre del Propietario',
                        prefixText: ''),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: 'Local, Planta o Provincia',
                        labelText: 'Origen de la cobranza',
                        prefixText: ''),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '000',
                        labelText: 'Nro de Garrafas vendidas',
                        suffixText: 'Garrafas'),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Renta a cobrar',
                        prefixText: 'Bs '),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Renta cobrada',
                        prefixText: 'Bs '),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        hintText: '00.00',
                        labelText: 'Renta por cobrar',
                        prefixText: 'Bs '),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
