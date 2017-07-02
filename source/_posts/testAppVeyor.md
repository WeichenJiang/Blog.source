---
title: 测试AppVeyor
date: 2017-07-02 11:20:37
tags:
  - Git
  - AppVeyor
categories: Git
---

{% cq %}根据这篇文章：[Hexo的版本控制与持续集成](https://formulahendry.github.io/2016/12/04/hexo-ci/)来学习下怎么自动化部署Hexo{% endcq %}

![Markdown](http://os73rgvu2.bkt.clouddn.com/bfd8007110becbcdf09f4f8d82f31368.png)

测试一下，这篇文章是通过AppVeyor自动部署到Github上的。

<!-- more -->

(2017.7.3更新)文章中的appveyor.yml里是这样配置的

```yaml
install:
  - node --version
  - npm --version
  - npm install
  - npm install hexo-cli -g
```

这样配置用的是默认的4.8版本的node，之后进行`hexo g`时有些依赖包会报错。

![如图所示](http://os73rgvu2.bkt.clouddn.com/6791acd31995387991cb345c43796b97.png)

所以要用新的node版本，配置改成这样：

```yaml
install:
  - ps: Install-Product node 6
  - node --version
  - npm --version
  - npm install -g npm
  - npm install
  - npm install hexo-cli -g
```

经测试可行：![](http://os73rgvu2.bkt.clouddn.com/c1a4fb73e8b76580e9871150234fa0f2.png)