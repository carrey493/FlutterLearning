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

### 2.Layout

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

#### 2.Texts

- Text文本
  - 第一项必填，字符串文本内容
  - textAlign，字体对齐方向
  - style，样式，TextStyle
    - color/fontSize/fontWeight/fontStyle，等等字体样式属性，size默认14

#### 3.Expanded

- Expanded，单元素容器。
- 在主轴，占用尽可能大的剩余空间，类似match_parent会忽略掉mainAxisAlignment对齐方式的布局
- 当元素内容超过设备屏幕尺寸时，可用于包裹限制元素(FittedBox也可)
  - flex.当多个expanded并列时，声明占用剩余空间的比重
- rowlcolumn/expanded，内容超出屏幕,均不支持滚动

#### 4.SizeBox & Padding & Margin  & Center  & FittedBox

- Padding/Margin，单一容器，仅支持内或外边距,没有高宽/边框等属性
- Center单元素容器，使内容居中
- SizedBox.元素容器，支持高宽，无内外边距
- FittedBox，年元素容器，可控制内部元素的缩放
- dp，像素密度，设备屏幕尺寸无关的。描述控件间距离等。Flutter默认单位

### 3.Container

- Container，单元素容器，支持边框/内外边距/高宽等属性的容器。便于扩展，建议使用
- color，背景色
- heightwidth
- padding/margin，内外边距，EdgeInsets 下的方法声明。
- EdgeInsets.only()/Edgeinsets. aWM)/EdgeInsets.fromLTRB等
- decoration.BoxDecoration。绘制在child后的装饰。更详细的设置
  - color，背景色。Colors/Color
  - image，背景图片
  - border，边框，Border.allcolor, width)等方法。或Border()
    - bottom: BorderSide(color , width)
- borderRadius.BorderRadius.al副Radius.circular(10))，圆角
- shape，形状

#### 1.GridView

- Gridview.count可指定列的数量，自动计算宽度
- Gridview.extent，可指定栅格宽度,自动计算列数
- 支持自动滚动，自动适应横竖屏切换，自动重用组件对象的平滑滚动
- 即，自动实现了原生Android中的ViewHolder
  - maxCrossAxis Extent，声明每个棚格的宽度
  - padding
  - mainAxis SpacinglcrossAxisSpacing，主/交叉轴外边距 
  - children

#### 2.ListView

https://flutter.cn/docs/cookbook/lists/basic-list

- 可以用来放置一组相似的组件 或当内部元素过长而自滚动的容器
- 与column相比 支持长度超过一屏的滚动
- 项默认不支持点击
- Divider() 分割线 可作为项直接使用
- ListView 当项固定时 可直接基于children属性创建
  - padding ListView的内边距 不是项的内边距
  - shrinkWrap 用于item高度不确定时 适配item内容高度 避免内容溢出
  - itemExtent 可固定iten=m 高度 超过会异常

