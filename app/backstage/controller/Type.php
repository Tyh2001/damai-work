<?php

namespace app\backstage\controller;

use think\Db;
use think\Request;

/**
 * 品类分类接口
 * 卷纸
 * 厨房用纸
 * 餐巾纸
 * 抽纸
 * 口袋纸巾
 * 湿巾纸
 */

class Type
{
  public function index()
  {
    // 设置请求方法
    if (!Request::instance()->isGet())  return;
    // 统一设置请求头
    header("Access-Control-Allow-Origin:*");

    // 获取到分类数据表
    $total_class = Db::table('total_class_2')->select();

    // 获取到全部数据表
    $renova_list = Db::table('renova_list_01')->select();

    /**
     * 1. 更新返回的数据
     * 将每一项添加标注对应的分类标识
     */
    // 循环分类数据表
    foreach ($total_class as $key1 => $classValue) {
      // 获取到每一个商品的编码
      $classCode = $classValue['EAN_Code'];

      // 循环全部数据表
      foreach ($renova_list as $key2 => $allValue) {
        // 获取到每一个商品的编码
        $allCode = $allValue['commodity_code'];

        // 如果两个的商品编码一样，就在所有数据表中的 type 中添加分类表所对应的 type
        if ($classCode ===  $allCode) {
          $renova_list[$key2]['type'] = $total_class[$key1]['type'];
        }
      }
    }
    // return json($renova_list);
    /**
     * 2. 获取全部纸巾的类别
     */
    // 全部的种类
    $typeList = array();

    foreach ($total_class as $key => $classValue) {
      array_push($typeList, $classValue['type']);
    }
    // 打印去重后的数组
    // return json(array_unique($typeList));

    /**
     * 3. 筛选 加和 计算出一种类型的总销量
     */
    function typeAll($renova_list, $type)
    {
      $sub = 0;
      foreach ($renova_list as $key => $item) {
        if ($item['type'] === $type) {
          $sub += $item['amount'];
        }
      }
      return $sub;
    };


    // 存储数据结果的数组
    $result = array();
    // 这里遍历上面已经处理好的全部的类别种类
    // 但是要通过 array_unique() 来遍历去重后的数组
    foreach (array_unique($typeList) as $key => $value) {
      // 循环函数 将遍历出来的每个类别作为参数传递给函数
      $res = typeAll($renova_list, $value);
      // 并将每意向都放到数组中去
      array_push($result, $res);
    }


    // 这是需要返回给前端的最终数组
    // $results = array();

    // 这里遍历类别分类的数组，放在以对象形式展示到数组中去
    $typeArr = array();
    $typeListArray = array_unique($typeList);
    foreach ($typeListArray as $key => $item) {
      array_push($typeArr, $item);
    }

    // 将两个处理好的数组统一都放到结果中去
    // array_push($results, $result);
    // array_push($results, $typeArr);

    // return json($typeArr);

    /**
     * 将品类分类表单独抽离出来放到新的表里面
     */
    foreach ($result as $key => $value) {
      $arr = array();
      // $arr['num'] = $value;
      $arr['num'] = $result[$key];
      $arr['list'] = $typeArr[$key];
      $arr['type'] = 'type';
      $arr['time'] = 'all';
      db('table_renova_all')->insert($arr);
      echo '完成' . $key . '条数据';
    }
  }

  // 返回系列列表
  public function type()
  {
    // 设置请求方法
    if (!Request::instance()->isGet())  return;
    // 统一设置请求头
    header("Access-Control-Allow-Origin:*");

    $typeList = Db::table('table_renova_all')->where('type', 'type')->select();

    return json($typeList);
  }
}
