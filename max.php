<?php

/**
 * 「アルゴリズムをはじめよう」３－５
 * 配列の最大値を返す
 */
function my_max($array){

	$max = 0;

	foreach($array as $num){
		if($max < $num) $max = $num;
	}

	return $max;
}


echo my_max(array(2,3,5,7,9)) === 9;
echo my_max(array(1,1,0,-4,1)) === 1;
echo my_max(array(43,7,22,100,0,83)) === 100;

