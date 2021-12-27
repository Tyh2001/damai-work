<?php

namespace app\backstage\controller;

use think\Db;
use think\Request;

/**
 * 渠道分类接口
 */

class Channel
{
  public function index()
  {
    // 获取到分类数据表
    // $total_class = Db::table('total_class')->select();

    // 获取到全部数据表
    $renova_list = Db::table('renova_list_01')->select();

    // 获取所有渠道的种类
    $channelList = array();
    foreach ($renova_list as $key => $item) {
      array_push($channelList, $item['store_name']);
    }

    // return json(array_unique($channelList));

    // 3. 筛选 加和 计算出一种渠道的总销量
    function channelAll($renova_list, $channel)
    {
      $sub = 0;
      foreach ($renova_list as $key => $item) {
        if ($item['store_name'] === $channel) {
          $sub += $item['amount'];
        }
      }
      return $sub;
    };


    // 存储数据结果的数组
    $result = array();
    // 这里遍历上面已经处理好的全部的类别种类
    // 但是要通过 array_unique() 来遍历去重后的数组
    foreach (array_unique($channelList) as $key => $value) {
      // 循环函数 将遍历出来的每个类别作为参数传递给函数
      $res = channelAll($renova_list, $value);
      // 并将每意向都放到数组中去
      array_push($result, $res);
    }

    // return json($result);

    // return json($result);

    // 最终返回结果
    // $results = array();


    // 渠道最终数组
    $channelListArr = array();

    foreach (array_unique($channelList) as $key => $value) {
      array_push($channelListArr, $value);
    }

    /**
     * 将颜色分类表单独抽离出来放到新的表里面
     */
    foreach ($result as $key => $value) {
      $arr = array();
      $arr['num'] = $result[$key];
      $arr['list'] = $channelListArr[$key];
      $arr['type'] = 'channel';
      $arr['time'] = 'all';
      db('table_renova_all')->insert($arr);
      echo '完成' . $key . '条数据';
    }

    // array_push($results, $result);
    // array_push($results, $channelListArr);

    // return json($results);
  }


  // 返回分类列表
  public function channel()
  {
    // 设置请求方法
    if (!Request::instance()->isGet())  return;
    // 统一设置请求头
    header("Access-Control-Allow-Origin:*");

    $channelList = Db::table('table_renova_all')->where('type', 'channel')->select();

    return json($channelList);
  }
}
