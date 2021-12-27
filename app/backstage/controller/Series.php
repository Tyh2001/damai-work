<?php

namespace app\backstage\controller;

use think\Db;
use think\Request;

/**
 * 系列分类接口
 */

class Series
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
     * 将每一项添加标注对应的系列标识
     */
    // 循环系列数据表
    foreach ($total_class as $key1 => $classValue) {
      // 获取到每一个商品的编码
      $classCode = $classValue['EAN_Code'];

      // 循环全部数据表
      foreach ($renova_list as $key2 => $allValue) {
        // 获取到每一个商品的编码
        $allCode = $allValue['commodity_code'];

        // 如果两个的商品编码一样，就在所有数据表中的 series 中添加系列表所对应的 series
        if ($classCode ===  $allCode) {
          $renova_list[$key2]['series'] = $total_class[$key1]['series'];
        }
      }
    }
    // return json($renova_list);
    /**
     * 2. 获取全部纸巾的类别
     */
    // 全部的种类
    $seriesList = array();

    foreach ($total_class as $key => $classValue) {
      array_push($seriesList, $classValue['series']);
    }
    // 打印去重后的数组
    // return json(array_unique($typeList));

    /**
     * 3. 筛选 加和 计算出一种类型的总销量
     */
    function seriesAll($renova_list, $type)
    {
      $sub = 0;
      foreach ($renova_list as $key => $item) {
        if ($item['series'] === $type) {
          $sub += $item['amount'];
        }
      }
      return $sub;
    };


    // 存储数据结果的数组
    $result = array();
    // 这里遍历上面已经处理好的全部的类别种类
    // 但是要通过 array_unique() 来遍历去重后的数组
    foreach (array_unique($seriesList) as $key => $value) {
      // 循环函数 将遍历出来的每个类别作为参数传递给函数
      $res = seriesAll($renova_list, $value);
      // 并将每意向都放到数组中去
      array_push($result, $res);
    }


    // 这是需要返回给前端的最终数组
    // $results = array();

    // 这里遍历类别分类的数组，放在以对象形式展示到数组中去
    $typeArr = array();
    $typeListArray = array_unique($seriesList);
    foreach ($typeListArray as $key => $item) {
      array_push($typeArr, $item);
    }

    // return json($typeArr);
    // return json($result);

    /**
     * 将系列分类表单独抽离出来放到新的表里面
     */
    foreach ($result as $key => $value) {
      $arr = array();
      // $arr['num'] = $value;
      $arr['num'] = $result[$key];
      $arr['list'] = $typeArr[$key];
      $arr['type'] = 'series';
      $arr['time'] = 'all';
      db('table_renova_all')->insert($arr);
      echo '完成' . $key . '条数据';
    }

  }

  // 返回系列列表
  public function series()
  {
    // 设置请求方法
    if (!Request::instance()->isGet())  return;
    // 统一设置请求头
    header("Access-Control-Allow-Origin:*");

    $seriesList = Db::table('table_renova_all')->where('type', 'series')->select();

    return json($seriesList);
  }
}
