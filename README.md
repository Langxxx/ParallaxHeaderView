# ParallaxHeaderView
一个十分普及且好看的tableHeaderView+NavigationBar的组合效果。虽然有很多大牛都写过类似的开源项目。出于学习swift的目的，写了一个swift版本，具体效果见下图。

![](http://7xnwdv.com1.z0.glb.clouddn.com/ParallaxHeaderView.gif)
![](http://7xnwdv.com1.z0.glb.clouddn.com/ParallaxHeaderView模糊.gif)


#教程
附上本人建造这个小*轮子*的过程(开发教程)

* CSDN博客地址：

[swift/制作一个简单的tableHeaderview+_navigationbar渐变效果(一)][id1]

[swift/制作一个简单的tableHeaderview+_navigationbar渐变效果(二)][id2]

[id1]: http://blog.csdn.net/u014051401/article/details/49622627

[id2]: http://blog.csdn.net/u014051401/article/details/49661663

*简书地址

[swift/制作一个简单的tableHeaderview+_navigationbar渐变效果(一)][id3]

[swift/制作一个简单的tableHeaderview+_navigationbar渐变效果(二)][id4]

[id3]: http://www.jianshu.com/p/c04323679ab6

[id4]: http://www.jianshu.com/p/267b678114e6

#怎么使用
导入**ParallaxHeaderView.swift**与**NavigationBarExtension.swift**,具体看示例程序。


##示例第一种效果
```
        let heardView = ParallaxHeaderView(style: .Default, subView: imageView, headerViewSize: CGSizeMake(self.tableView.bounds.width, 100), maxOffsetY: -120, delegate: self)

        self.tableView.tableHeaderView = heardView
```

##示例第二种效果

```
        let heardView = ParallaxHeaderView(style: .Thumb,subView: imageView, headerViewSize: CGSizeMake(self.tableView.frame.width, 64), maxOffsetY: 93, delegate: self)
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.tableView.tableHeaderView = heardView

```

