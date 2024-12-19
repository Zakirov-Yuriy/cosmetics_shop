import 'package:cosmetics_shop/widgets/filter/filter_item.dart';
import 'package:cosmetics_shop/widgets/filter/option_dialog.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  String _sortOption = 'По популярности';
  String _skinType = 'Жирная';
  String _productType = 'Все';
  String _skinProblem = 'Не выбрано';
  String _effect = 'Увлажнение';
  String _cosmeticLine = 'Все';

  Future<void> _showOptionDialog({
    required String title,
    required List<String> options,
    required String currentValue,
    required Function(String) onSelect,
  }) async {
    String? selectedValue = await showDialog<String>(
      context: context,
      builder: (context) {
        return OptionDialog(
          title: title,
          options: options,
          currentValue: currentValue,
        );
      },
    );

    if (selectedValue != null) {
      onSelect(selectedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Фильтры',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              FilterItem(
                label: 'Сортировка',
                value: _sortOption,
                onTap: () {
                  _showOptionDialog(
                    title: 'Сортировка',
                    options: ['По популярности', 'По цене', 'По рейтингу'],
                    currentValue: _sortOption,
                    onSelect: (value) {
                      setState(() {
                        _sortOption = value;
                      });
                    },
                  );
                },
              ),
              FilterItem(
                label: 'Тип кожи',
                value: _skinType,
                onTap: () {
                  _showOptionDialog(
                    title: 'Тип кожи',
                    options: [
                      'Жирная',
                      'Комбинированная',
                      'Сухая',
                      'Нормальная'
                    ],
                    currentValue: _skinType,
                    onSelect: (value) {
                      setState(() {
                        _skinType = value;
                      });
                    },
                  );
                },
              ),
              FilterItem(
                label: 'Тип средства',
                value: _productType,
                onTap: () {
                  _showOptionDialog(
                    title: 'Тип средства',
                    options: ['Все', 'Крем', 'Тоник', 'Сыворотка'],
                    currentValue: _productType,
                    onSelect: (value) {
                      setState(() {
                        _productType = value;
                      });
                    },
                  );
                },
              ),
              FilterItem(
                label: 'Проблема кожи',
                value: _skinProblem,
                onTap: () {
                  _showOptionDialog(
                    title: 'Проблема кожи',
                    options: ['Не выбрано', 'Акне', 'Пигментация', 'Сухость'],
                    currentValue: _skinProblem,
                    onSelect: (value) {
                      setState(() {
                        _skinProblem = value;
                      });
                    },
                  );
                },
              ),
              FilterItem(
                label: 'Эффект средства',
                value: _effect,
                onTap: () {
                  _showOptionDialog(
                    title: 'Эффект средства',
                    options: ['Увлажнение', 'Очищение', 'Регенерация'],
                    currentValue: _effect,
                    onSelect: (value) {
                      setState(() {
                        _effect = value;
                      });
                    },
                  );
                },
              ),
              FilterItem(
                label: 'Линия косметики',
                value: _cosmeticLine,
                onTap: () {
                  _showOptionDialog(
                    title: 'Линия косметики',
                    options: ['Все', 'Премиум', 'Стандарт'],
                    currentValue: _cosmeticLine,
                    onSelect: (value) {
                      setState(() {
                        _cosmeticLine = value;
                      });
                    },
                  );
                },
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, {
                      'sortOption': _sortOption,
                      'skinType': _skinType,
                      'productType': _productType,
                      'skinProblem': _skinProblem,
                      'effect': _effect,
                      'cosmeticLine': _cosmeticLine,
                    });
                  },
                  child: const Text(
                    'Применить фильтры',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway-SemiBold',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
