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

### 1.Layout

- https://flutter.cn/docs/developmentuilayout
- flutter组件，默认均不包括内/外边距/高宽属性。
- 因此,当需要内外边距边框时,需要置于容器中。
- 但flutter本身没有区分组件与容器，容器也是组件，一切皆为组件
- 有的容器仅能放单元素;单元素容器:有的可以放多个元素，多元素容器。通过提供的属性可以判断
  - child
  - children

#### 1.Row & Column

- https://flutter.cn/docs/developmentui/layouttaligning-widgets
- row，多元素容器，声明一个行。行中的组件在一行横向排列
- column，多元素容器，声明一个列。列中的组件在一列纵向排列
- mainaxis/crossaxis，主轴/交叉轴，与排列方向有关。即，row的主轴为X轴，column的主轴为Y轴
- 默认均占用其主轴的最大空间，即父元素的空间
- 即，声明一个列，纵向占用最大空间
  - mainAxisSize. MainAxisSize.min，wrap，包裹，仅占用所需空间
  - mainAxisAlignment.MainAxisAlignment，子项对齐方式，剩余空间的分配
    -  spaceBetween，2端对齐
    -  spacearound，每个元素占用相等剩余空间，包括第一/最后，的2端 
    - spaceEvenly，剩余空间均匀分布在每个元素之间
  - crossAxisAlignment.CrossAxisAlignment，纵轴对齐方向
  -  children，集合，其中的多个组件

### 2.Texts

- Text文本
  - 第一项必填，字符串文本内容
  - textAlign，字体对齐方向
  - style，样式，TextStyle
    - color/fontSize/fontWeight/fontStyle，等等字体样式属性，size默认14