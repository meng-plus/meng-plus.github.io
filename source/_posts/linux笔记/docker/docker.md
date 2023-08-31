

# docker

## 资料来源

1. [什么是Docker？看这一篇干货文章就够了！ - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/187505981)

2. 官方文档 [Reference documentation | Docker Docs](https://docs.docker.com/reference/)
3. image地址 https://hub.docker.com
4. [Docker 教程 | 菜鸟教程 (runoob.com)](https://www.runoob.com/docker/docker-tutorial.html)

docker对比虚拟机可能更好的理解：

- 虚拟机就是一个运行在另一个操作系统里的**完整的操作系统**，所以虚拟机必须是完整的硬盘空间，CPU核心的完全占用，RAM的预先分配，无论这个操作系统的资源用还是不用，都是被他占用的，其他软件或者系统无法再次利用。

- docker也是独立运行的，但是它只把差异部分单独保存，底层对系统资源的调用公用当前系统资源，用多少取多少，因此不太单子多开是否ram不够用的问题

  

---------------------


## 本项目说明

### 参考资料

官方资料https://u-boot.readthedocs.io/en/latest/index.html

官方最新仓库https://github.com/u-boot/u-boot

1. 参照**官方资料**准备的开发环境
2. 优先支持F1C200S环境（我正在学习）
3. 本镜像新建了管理员账户 **uboot 23456**

### 使用方式 

1. 本地安装docker

   ```shell
   # ubuntu 环境下 
   sudo apt update && sudo apt install docker.io
   ```

2. 获取本镜像,默认最新

   ```shell
   docker pull mengplus/uboot:latest
   ```

3. 列表查看本地安装结果

   ```shell
   sudo docker images
   # 可选参数 
   # -a 所有
   # -q 只显示镜像id
   ```

4. 启动本镜像

   ```shell
   #启动容器，进入命令交互
   sudo docker run -it mengplus/uboot
   #启动容器，并挂载主机开发环境到容器
   sudo docker run -it -v $(pwd):/home/uboot/workspace mengplus/uboot
   #启动容器，并挂载主机开发环境到容器并启动联网功能
   sudo docker run -it --privileged -v $(pwd):/home/uboot/workspace mengplus/uboot
   ```

   
