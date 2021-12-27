<?php

namespace app\backstage\controller;

use think\Db;
use think\Request;

/**
 * 颜色销量接口
 */
class Color
{
  public function index()
  {

    // 获取到分类数据表
    $total_class = Db::table('total_class_2')->select();

    // return json($total_class);

    // 获取到全部数据表
    $renova_list = Db::table('renova_list_01')->select();

    /**
     * 1. 更新返回的数据
     * 将每一项添加标注对应的颜色色号
     */
    // 循环分类数据表
    foreach ($total_class as $key1 => $classValue) {
      // 获取到每一个商品的编码
      $classCode = $classValue['EAN_Code'];

      // 循环全部数据表
      foreach ($renova_list as $key2 => $allValue) {
        // 获取到每一个商品的编码
        $allCode = $allValue['commodity_code'];

        // 如果两个的商品编码一样，就在所有数据表中的 color 中添加分类表所对应的 color
        if ($classCode ===  $allCode) {
          $renova_list[$key2]['color'] = $total_class[$key1]['color'];
        }
      }
    }

    /**
     * 2. 获取全部颜色的类别
     */
    // 全部的颜色种类
    $colorType = array();

    foreach ($total_class as $key => $classValue) {
      // 将所有的颜色种类都放到新的数组中去
      array_push($colorType, $classValue['color']);
    }
    // 打印去重后的数组
    // return json(array_unique($colorType));

    // $colorListTable_ = array();
    // foreach (array_unique($colorType) as $key => $value) {
    //   array_push($value, $colorListTable_);
    // }
    // var_dump($colorType);

    // return json($colorListTable_);
    /**
     * 3. 筛选 加和 计算出一种颜色的总销量
     * 再计算每个颜色的总销量
     */

    /**
     * 该函数通过循环数据列表中的每一项
     * 如果数据中的 color 值等于传递来的参数值
     * 就返回该值的加和，就可以计算出颜色的总和
     * @param { array } $renova_list 全部数据列表
     * @param { string } $color 颜色值
     */
    function colorAll($renova_list, $color)
    {
      $sub = 0;
      foreach ($renova_list as $key => $item) {
        if ($item['color'] === $color) {
          $sub += $item['amount'];
        }
      }
      return $sub;
    };



    // 存储数据结果的数组
    $result = array();
    // 这里遍历上面已经处理好的全部的颜色种类
    // 但是要通过 array_unique() 来遍历去重后的数组
    foreach (array_unique($colorType) as $key => $value) {
      // 循环函数 将遍历出来的每个颜色作为参数传递给函数
      $res = colorAll($renova_list, $value);
      // 并将每意向都放到数组中去
      array_push($result, $res);
    }

    // 数据结果
    // var_dump($result);
    // return json($result);
    $colorArr = array();
    $uniqueColorArray = array_unique($colorType);
    foreach ($uniqueColorArray as $key => $item) {
      array_push($colorArr, $item);
    }

    /**
     * 将颜色分类表单独抽离出来放到新的表里面
     */
    foreach ($result as $key => $value) {
      $arr = array();
      // $arr['num'] = $value;
      $arr['num'] = $result[$key];
      $arr['list'] = $colorArr[$key];
      // $arr['list'] = array_unique($colorType)[$key];
      // db('table_color')->insert($arr);
      // echo '完成' . $key . '条数据';
      $arr['type'] = 'color';
      $arr['time'] = 'all';
      db('table_renova_all')->insert($arr);
      echo '完成' . $key . '条数据';
    }

    // foreach ($colorType as $key => $value) {
    //   $arr = array();
    //   $arr['list'] = $value;
    //   db('table_color')->insert($arr);
    //   echo '完成' . $key . '条数据';
    // }

    // 颜色结果
    // var_dump(array_unique($colorType));
    // return json(array_unique($colorType));


    /**
     * 这里因为前端需要两个数组
     * 所有这个又新建了一个数组
     * 数组中存储的一个是数据，一个是颜色的描述文字
     * 
     * 这里下面又遇到了一个问题：
     * 颜色的描述文字是上面遍历出来的，数组中有很多重复的元素
     * 使用去重函数直接放到新的的数组中去之后会变成对象
     * 所以这里有创建了一个新的数组
     * 通过遍历颜色再放到新的数组中去了
     * 这样在放到结果数组中就可以以正常的数组形式展示出来了
     * 现在返回给前端的数组格式类型是：
     * 一个大的数组中包含了两个数组，一个是数值，一个是描述信息
     */

    // 这是需要返回给前端的最终数组
    // $results = array();

    // // 这里遍历颜色分类的数组，放在以对象形式展示到数组中去
    // $colorArr = array();
    // $uniqueColorArray = array_unique($colorType);
    // foreach ($uniqueColorArray as $key => $item) {
    //   array_push($colorArr, $item);
    // }
    // return json($colorArr);

    // // 将两个处理好的数组统一都放到结果中去
    // array_push($results, $result);
    // array_push($results, $colorArr);

    // return json($results);
    // foreach ($results[0] as $key => $value) {
    //   $arr = array();
    //   $arr['num'] = $value;
    //   db('table_color')->insert($arr);
    // }
    // foreach ($results[1] as $key => $value) {
    //   $arr['list'] = $value;
    //   db('table_color')->insert($arr);
    // }

    // return json($arr);
  }

  // 返回颜色列表
  public function Color()
  {
    // 设置请求方法
    if (!Request::instance()->isGet())  return;
    // 统一设置请求头
    header("Access-Control-Allow-Origin:*");

    $colorList = Db::table('table_renova_all')->where('type', 'color')->select();

    return json($colorList);
  }
}
