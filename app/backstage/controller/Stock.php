<?php

namespace app\backstage\controller;

use think\Db;

class Stock
{
  /**
   * 根据匹配表得出匹配进最新的库存
   * 添加出货量
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
