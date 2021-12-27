<?php

namespace app\backstage\Model;

use think\Model;

class Test extends Model
{
  // 思路
  // 订单表数组定义A
  // 循环数组A中，通过获取数组的商品编码字段，切割盘点第一个字母是否为R，如果是的话则为组合装编码，不是则为单品。
  // 首先分为两种情况，1，单品，2，组合装。
  // 单品，直接通过摊销公式将数据赋值给新数组A即可（摊销公式见下方）
  // 组合装，通过该组合装编码在组合装匹配表中出有Y行数据（一个组合装对应几种商品）新增数据，在数组后添加Y个数组，添加的每个数组中id字段不变，订单号不变，变化的为(商品编码，数量，成本)
  // 在新增的元素的同时，计算出各品摊销，并加在每个数组的中,最后，输出即可。
  //
  // 摊销计算方式
  // 主品摊销 = 主品收款 *（主品成本 /（主品成本 + 赠品成本））
  // 赠品摊销 = 赠品收款 *（赠品成本 /（主品成本 + 赠品成本））

  // http://localhost/Renova_List/public/index.php/backstage/Test/renova_get_do

  // 成本价来源于组合装匹配表assembly 和单品匹配表item
  public function renova_get_do()
  {

    // 这个是源表
    // 这个是源表
    // 这个是源表
    // 这个是源表
    $arr = db('daoru_2')->select(); // 订单明细  // 更换渠道需要新建数据表，并更换表名，以及末尾 db('tanxiao_4')->insert($data); 也需新增、修改
    $sum = 0;

    foreach ($arr as $key => $value) {
      // 获取到 commodity_code 字段的第一个字母
      $R = substr($value['commodity_code'], 0, 1);

      // 如果第一个字母不是 R 那么为单品
      if ($R != "R") { // 判断该订单的商品为单品

        $condition = array();
        $condition['commodity_code'] = $value['commodity_code'];
        $item = db('item')->where($condition)->find();

        $arr[$key]['store_name'] = $value['store_name'];
        $arr[$key]['cost_amount'] = $item['cost_amount'];
        $arr[$key]['total_cost'] = $value['amount'] * $item['cost_amount']; // 总成本 = 数量 * 成本价
        $arr[$key]['amortization'] = $value['amount_payable']; // 摊销收入
        $arr[$key]['gross_profit'] = $value['amount_payable'] - $value['amount'] * $item['cost_amount']; // 毛利 = 摊销 - 总成本
      } else {
        // 否则为组合装
        $id = $value['id']; // 序号 X
        $condition = array();
        $condition['assembly_code'] = $value['commodity_code'];

        $res = array();

        // 组合装匹配表
        // 组合装匹配表
        // 组合装匹配表
        $res = db('assembly_11_22')->where($condition)->select();
        $store_name = $value['store_name'];
        $f_order = $value['f_order']; // 主订单编号
        $pid = $value['pid'];
        $shop_name = $value['shop_name']; // 商品名称
        $price = $value['price']; // 商品金额
        $amount_payable = $value['amount_payable']; // 订单应付金额
        $create_time = $value['create_time']; // 订单提交时间
        $remarks = $value['remarks']; // 备注
        $amount_payable = $value['amount_payable']; // 备注

        $zong_chengben = 0; // 摊销总成本 = 主品成本 * 数量 + 赠品成本 * 数量

        $arr_zuhe = array();

        foreach ($res as $k => $v) {
          $zong_chengben = $zong_chengben + $v['cost_amount'] * $v['amount'];
          $sum = $sum + 1;
          $data = array();

          $data['id'] = $id;
          $data['pid'] = $pid;
          $data['f_order'] = $f_order; // 主订单编号
          $data['store_name'] = $store_name; // 店铺名
          $data['shop_name'] = $shop_name; // 商品名称
          $data['commodity_code'] = $v['commodity_code']; // 商品编码
          $data['price'] = $price; // 商品金额
          $data['create_time'] = $create_time; // 订单提交时间
          $data['remarks'] = $remarks; // 备注
          $data['amount_payable'] = $amount_payable; // 订单应付金额
          $data['cost_amount'] = $v['cost_amount']; // 组合装拆解后的单品成本价
          $data['amount'] = $v['amount']; // 组合装拆解后的单品的数量
          $data['total_cost'] = $v['cost_amount'] * $v['amount']; // 总成本 = 成本 * 数量

          // 组合装分两种情况，1.单sku  2.多sku
          $arr_zuhe = $this->arrInsert($arr_zuhe, $k, $data);
        }

        foreach ($arr_zuhe as $a => $b) {
          // 订单应付金额 × 总成本 /  摊销总成本
          $tanxiao = $b['amount_payable'] * ($b['total_cost'] / $zong_chengben);
          $arr_zuhe[$a]['amortization'] = round($tanxiao, 2);
          $arr_zuhe[$a]['gross_profit'] = round($tanxiao, 2) - $b['total_cost']; // 毛利 = 摊销 - 成本
        }
        unset($arr[$key]); // 删除组合装编码的数据

        foreach ($arr_zuhe as $key1 => $value1) {
          $arr[] = $value1;
        }
        $arr_zuhe = array();
      }
    }

    // 按id排序

    $id = array_column($arr, 'id');
    array_multisort($id, SORT_ASC, $arr);

    foreach ($arr as $key => $value) {
      $data = array();
      $data['id'] = $value['id'];
      $data['pid'] = $value['pid'];
      $data['f_order'] = $value['f_order']; // 主订单编号
      $data['shop_name'] = $value['shop_name']; // 商品名称
      $data['store_name'] = $value['store_name']; // 店铺名称
      $data['commodity_code'] = $value['commodity_code']; // 商品编码
      $data['price'] = $value['price']; // 商品金额
      $data['create_time'] = $value['create_time']; // 订单提交时间
      $data['remarks'] = $value['remarks']; // 备注
      $data['amount_payable'] = $value['amount_payable']; // 订单应付金额
      $data['total_cost'] = $value['total_cost']; // 总成本 = 成本 * 数量
      $data['amount'] = $value['amount']; // 数量
      $data['amortization'] = $value['amortization']; // 摊销
      $data['gross_profit'] = $value['gross_profit']; // 毛利
      echo "新增" . $key . "条";

      // 导出的表
      // 导出的表
      // 导出的表
      // 导出的表
      db('tanxiao_2')->insert($data);
    }
    return $arr;
  }
  // 二维数组指定位置插入新数组
  function arrInsert($arr, $index, $data)
  {
    $c = count($arr); // 总长度
    if ($c <= $index) {
      $arr[] = $data;
      return $arr;
    };
    for ($i = ($c - 1); $i >= 0; $i--) { // 循环转移数组元素
      $arr[($i + 1)] = $arr[$i];
      if ($index == $i) {
        $arr[$i] = $data;
        break;
      }
    }
    return $arr; // 返回运行结果
  }
}

// 摊销计算方式
// 主品摊销 = 主品收款 *（主品成本 /（主品成本 + 赠品成本））
// 赠品摊销 = 赠品收款 *（赠品成本 /（主品成本 + 赠品成本））

// 摊销总成本 = 主品成本 * 数量 + 赠品成本 * 数量
// 摊销 = 订单应付金额 × 总成本 / 摊销总成本
// 毛利 = 摊销 - 成本

// 总成本 = 成本 * 数量


// 总成本（单品成本 * 数量）
