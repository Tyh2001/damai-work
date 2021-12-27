<?php

namespace app\backstage\controller;

use think\Db;

class Stock
{
  /**
   * 根据匹配表得出匹配进最新的库存
   * 添加出货量
   * 
   * 1.导出每周库存更新表格
   * 2.导出h5投票数据表格
   * 3.h5投票项目优化
   * 
   * 1.每周库存的表格进行了很多的优化，每周的库存对应的是分别的数据库表，每次导入都会携带商品编码，然后再匹配给匹配表哦，逻辑是使用for循环嵌套for循环来判断如果商品编码全等就会进行匹配的原理来做出匹配表，然后最终的表格再通过匹配表和每周的出库表来进行匹配，匹配的方式也是通过for循环然后if判断全等来写入
   * 2.h5投票的数据是在我们服务器在线网站的数据库中的citi数据库的表中到处的表格，里面记录每一次投票的信息和时间，开始并没有找到新增的投票数据，后来将几个表全部找了一遍才找到，还好在设计的时候，数据库设置的时间列表，前端将每次提交数据的时间都返回给了后端，后端记录在了数据库中
   * 3.新版h5页面使用 vite 创建 vue3 的项目，使用新版本的 vue3 组件库 vant 来搭建项目，使用基于 JavaScript 的开源可视化图表库 Echarts 可视化工具来展示投票结果的柱状图。结果页面的柱状图需要以降序排列，开始时尝试配置 echarts 中增加一些可以升序或者降序的配置可以进行实现，可以并没有找到这个配置，然后自己的数据还比较复杂，就自己写了一个用来升序的算法冒泡排序，来现实了排序方法。
   * 
   * 
   * http://localhost/damai_work/public/index.php/backstage/stock/stock
   */
  public function Stock()
  {
    $shipment_list = Db::table('shipment_list')->select(); // 导出表
    $pipei_list = Db::table('pipei_list')->select(); // 匹配表

    // 根据匹配表得出匹配进最新的库存
    foreach ($shipment_list as $key => $item) {

      foreach ($pipei_list as $key2 => $item2) {
        if ($item['code'] === $item2['code']) {
          Db::table('shipment_list')->where('id', $key + 1)->update(
            [
              'goods_name_en' => $item2['goods_name_en'],
              'bar_code' => $item2['bar_code'],
              'order_num' => $item2['order_num'],
              'stock' => $item2['stock'],
            ]
          );
        }
        if ($item['bar_code'] === $item2['bar_code']) {
          // 根据匹配表得出匹配进最新的库存
          Db::table('shipment_list')->where('id', $key + 1)->update(['sea_count' =>  $item2['sea_count']]);
        }
      }

      // 出货量（累积出货量）= 订货量（累积订货量）- 最新的库存
      Db::table('shipment_list')->where('id', $key + 1)->update(
        [
          'shipment_count' =>  $item['order_num'] - $item['stock']
        ]
      );

      // 计算第一二三四周的出货量
      $count_first = sizeof(Db::table('week_first')->where('code', $item['code'])->select());
      $count_second = sizeof(Db::table('week_second')->where('code', $item['code'])->select());
      $count_third = sizeof(Db::table('week_third')->where('code', $item['code'])->select());
      $count_fourth = sizeof(Db::table('week_fourth')->where('code', $item['code'])->select());

      Db::table('shipment_list')->where('id', $key + 1)->update(
        [
          'shipment_first_week' => $count_first,
          'shipment_second_week' => $count_second,
          'shipment_third_week' => $count_third,
          'shipment_fourth_week' => $count_fourth,
        ]
      );
    }

    $result = array('code' => 201, 'msg' => 'ok');
    return json($result);
  }

  // 地址：
  // http://localhost/damai_work/public/index.php/backstage/stock/changeStock
  public function changeStock()
  {
    $new_stock = Db::table('new_stock')->select(); // 最新库存表
    $pipei_list = Db::table('pipei_list')->select(); // 匹配表

    foreach ($pipei_list as $key => $item) {

      foreach ($new_stock as $key2 => $item2) {
        if ($item['code'] === $item2['code']) {
          Db::table('pipei_list')->where('id', $key + 1)->update([
            'stock' => $item2['stock'],
          ]);
        }
      }
    }
    $result = array('code' => 201, 'msg' => 'ok');
    return json($result);
  }
}
