---
title: Github-pages配置
date: 2017-06-29 17:51:42
tags:
  - Git
categories: Git
---

{% cq %}学习一下怎么搞github-pages{% endcq %}

![Markdown](http://os73rgvu2.bkt.clouddn.com/29ea1defc1b64d4ed10b9867edc71769.png)

<!-- more -->

# 起因



今天在看Next主题的issue时看到了这么一个问题：[请问怎样添加封面和关于页面](https://github.com/iissnan/hexo-theme-next/issues/1496)

iissnan的回答是：

>Yes. I use two GitHub Pages to serve them respectively:

> - Personal home page (http://iissnan.com) is hosted in the User Page Site, the username.github.io repository's master branch. There is a CNAME file that specify the domain to iissnan.com.

> - Blog (http://notes.iissnan.com) is hosted in a Project Page Site, notes repository's (in my case) gh-pages branch. There is a CNAME file that specify the domain to notes.iissnan.com.

> - Setup custom domain for your GitHub Pages. Please see Using a custom domain with GitHub Pages

> My personal home page is just a plain HTML file, you can find it at https://github.com/iissnan/iissnan.github.com

愚蠢的我对于git的了解达到了遇到每一个问题都去问度娘的地步，看到这个问题后想了想我试试吧，刚好iissnan的仓库里有一个他翻译的progit的repo：[Pro Git （第一版） 中文版]([http://iissnan.com/progit](http://iissnan.com/progit)

我刚好可以fork一下，搞一个我自己域名里的Pro Git，然后可以在自己的网站里学习Git，岂不美滋滋？当然，遇到了好几个坑-。-  这里先公布下成果：<http://jiangweichen.me/progit>

# 第一个坑：Everything up-to-date



将项目fork到我的账号里，一步步进行下去。开始很完美 ，过程很流畅，进行到最后一步：`git push origin gh-pages`时，哦豁！命令行里竟然给出了这么一行结果：

`Everything up-to-date`

WTF！ 所有东西都是最新的那我搞了半天搞了些啥子哦！赶紧问下度娘，找到了一个解决方案：

[Git问题Everything up-to-date解决](http://blog.csdn.net/myhuashengmi/article/details/52197566)

意思大概是这样：(其实我是直接复制粘贴的)

> 出现这个问题的原因是git提交改动到缓存，要push的时候不会将本地所有的分支都push掉，所以出现这个问题。我们应该告诉git提交哪个分支。

> 这里有种特殊的情况是如果你是fork别人的仓库再clone到本地的话，即使[Git](http://lib.csdn.net/base/28)上只有一个主分支，他还是可能出现这个错误。那么我们就需要新建分支提交改动然后合并分支。

# 第二个坑：Already up-to-date



然后又是一步步的命令，到了这一步：`git merge newbranch`的时候，又出错了：`Already up-to-date` ... 哈？ 原来是我commit没有成功，并不会用vim的我找到了这么一条命令：`git commit –a –m +msg`  。 这样就不用在vim里写msg了。

最后的最后，终于搞定了。我可以在自己的网站里学习Git啦：

<http://jiangweichen.me/progit>

也欢迎大家来学习git！