# bo_fluttercurriculum

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# 东北林业大学信息与计算机工程学院王波老师授课

## 2020.4.19

### Flutter基础知识学习

### 1.Using Material Components

- https://flutter.cn/docsldevelopmentuil/widgets-intro#using-material-components需引入文件，别引错路径
- 需引入文件，别引错路径

#### 1.package

- flutter/material.dart

#### 2.MaterialApp

- 是支持Google Material样式的组件，应用以此开始
- title：应用在任务管理器中显式的标题，不是应用页面标题栏的标题
-  theme，ThemeData。应用样式主题，主题颜色等。默认与当前android系统版本主题色调相同，不同android版本的主题色调不同
  -  primarySwatch，主题色调，Colors
- home，整个应用的root根组件，一般为scaffold对象

#### 3.Scaffold

- 是包含若干初始化属性声明的手脚架
- 包含标题栏/主内容/浮动按钮/下导航按钮组/左右侧滑等内置属性，可以快速构建app应用
  - appBar，标题栏，默认没有，可创建一个空的
  - body，主内容容器。只能放一个组件，因此一般创建一个容器bottomNavigationBar，底部导肮
  - bottomNavigationBar，底部导肮
  - 等等属性,后期讨论
- 80%的代码，基于构造函数创建所需类型对象，为对象的属性继续创建所需对象。写法类似于构造js对象