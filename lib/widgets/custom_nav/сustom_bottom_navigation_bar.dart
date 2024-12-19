import 'package:cosmetics_shop/screens/%D1%81atalog_screen.dart';

import 'package:cosmetics_shop/screens/cart_screen.dart';
import 'package:cosmetics_shop/screens/home_screen.dart';
import 'package:cosmetics_shop/screens/profile_screen.dart';
import 'package:cosmetics_shop/widgets/custom_nav/custom_nav_bar_item.dart';
import 'package:flutter/material.dart';

// Перечисление для вкладок
enum TabItem { home, catalog, cart, profile }

// Ключи навигаторов для каждой вкладки
final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
  TabItem.home: GlobalKey<NavigatorState>(),
  TabItem.catalog: GlobalKey<NavigatorState>(),
  TabItem.cart: GlobalKey<NavigatorState>(),
  TabItem.profile: GlobalKey<NavigatorState>(),
};

// Виджеты для каждой вкладки
Map<TabItem, WidgetBuilder> widgetBuilders(BuildContext context) {
  return {
    TabItem.home: (_) => HomeScreen(),
    TabItem.catalog: (_) => CatalogScreen(),
    TabItem.cart: (_) => CartScreen(),
    TabItem.profile: (_) => ProfileScreen(),
  };
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  TabItem _currentTab = TabItem.home; // Текущая активная вкладка

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // Если вкладка уже активна, возвращаемся на её начальный экран
      navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_currentTab]!.currentState!.maybePop(),
      child: Scaffold(
        body: Stack(
          children: TabItem.values.map((tabItem) {
            return _buildOffstageNavigator(tabItem);
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab.index,
          onTap: (index) => _selectTab(TabItem.values[index]),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            buildCustomNavBarItem(
              label: 'Главная',
              iconPath: 'assets/icons/home.png',
              isSelected: _currentTab == TabItem.home,
            ),
            buildCustomNavBarItem(
              label: 'Каталог',
              iconPath: 'assets/icons/search.png',
              isSelected: _currentTab == TabItem.catalog,
            ),
            buildCustomNavBarItem(
              label: 'Корзина',
              iconPath: 'assets/icons/cart.png',
              isSelected: _currentTab == TabItem.cart,
            ),
            buildCustomNavBarItem(
              label: 'Профиль',
              iconPath: 'assets/icons/profile.png',
              isSelected: _currentTab == TabItem.profile,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: Navigator(
        key: navigatorKeys[tabItem],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => widgetBuilders(context)[tabItem]!(context),
          );
        },
      ),
    );
  }
}
