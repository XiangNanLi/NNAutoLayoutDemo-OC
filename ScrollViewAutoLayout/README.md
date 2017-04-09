<h3>UIScrollViewAutoLayout</h3>
<em>参考文档：<a href="https://spin.atomicobject.com/2014/03/05/uiscrollview-autolayout-ios/"><span style="font-style:italic;">Using UIScrollView with Auto Layout in iOS</span></a></em>
<p>UIScrollView在设置AutoLayout时，为ScrollView增加一个ContentView，设置ContentView的上、下、左、右距离SuperView(即ScrollView)间隔为0，然后根据情况为ContentView设定宽度或高度：如果要能水平滚动，则设置高度固定（如果ScrollView为屏幕高度，可以设置高度等于ScrollView的高度），宽度不用指定，但是ContentView的Subviews必须能够约束出ContentView的宽高，即Subview必须限定上、下、左、右与ContentView的关系；竖直方向滚动，则设置度固定（如果ScrollView为屏幕宽度，可以设置高度等于ScrollView的宽度，高度不用设定，由Subviews运算得出）。</p>
<p>ContentView设定上、下、左、右距离SuperView(即ScrollView)间隔为0，是为了说明ScrollView的CotentSize由ContentView计算而来。</p>

<p>PS:有些文档说设定宽度或高度约束“Remove at build”，这样会造成ContentView的宽度或高度没有计算值，所以在运行时会发现为600，所以需要在layoutSubviews时 通过代码约束宽度或高度。</p>