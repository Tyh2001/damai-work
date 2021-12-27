<?php

namespace app\backstage\Controller;

use think\Controller;
use think\Loader;
use \think\Request;
use think\Db;

class Test extends Controller
{

  public function index()
  {
    return $this->fetch();
  }
  public function left()
  {
    return $this->fetch();
  }
  public function top()
  {
    return $this->fetch();
  }
  public function main()
  {
    return $this->fetch();
  }
  public function swich()
  {
    return $this->fetch();
  }
  public function bottom()
  {
    return $this->fetch();
  }
  public function admin_list()
  {
    $results = Loader::Model('Test')->renova_get_do();
    // $results=Loader::Model('Backstage')->admin_list();
    $this->assign('results', $results);
    return $this->fetch();
  }

  public function get()
  {
    $request = Request::instance();
    $ip = $request->ip();
    $data = array();
    $data['ip'] = $ip;
    $data['name'] = 'aaa';
    db('ip')->insert($data);
  }
  public function aa()
  {
    phpinfo();
  }
  //renova 订单表格，获取详细sku销售情况数据（母订单表格分化子订单表格）
  public function renova_get_do()
  {

    $results = Loader::Model('Test')->renova_get_do();
  }
  //新增pid
  public function pid_do()
  {
    $results = db('sale')->select();
    $data = array();

    foreach ($results as $key => $value) {
      // var_dump($value['id']);
      $condition = array();
      $condition['id'] = $value['id'];
      $data = array();
      $data['pid'] = $value['id'];
      $results = Db::name('sale')->where($condition)->update($data);

      $res = Db::name('sale')->getLastSql();
    }
    echo "新增pid完成";
  }


  public function delete_do()
  {
    $results = db('sale')->select();
    $data = array();



    foreach ($results as $key => $value) {
      if ($value['f_order'] == '') {
        db('sale')->where('id', $value['id'])->delete();
      }
    }
    echo "删除成功";
  }
  public function test()
  {
    $arr = [1, 2, 3, 4, 5, 6];
    $arr1 = 'x';
    $arr = $this->arrInsert($arr, 4, $arr1);
    //打印 arr 的内容–：
    var_dump($arr);
  }
  //二维数组指定位置插入新数组
  function arrInsert($arr, $index, $data)
  {
    $c = count($arr); // 总长度

    if ($c <= $index) {

      $arr[] = $data;

      return $arr;
    };

    for ($i = ($c - 1); $i >= 0; $i--) { //循环转移数组元素

      $arr[($i + 1)] = $arr[$i];

      if ($index == $i) {

        $arr[$i] = $data;

        break;
      }
    }

    return $arr; //返回运行结果
  }
}
