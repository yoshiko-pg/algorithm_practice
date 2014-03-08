=begin
「アルゴリズムをはじめよう」第７章
単純選択法
・一番小さなデータを選択して、先頭から順に並び替えていく
=end

module My_sort

	def selection (array)

		len = array.length - 1

		(0..len).each do |i|

			# array[i] ～ array[len] の最小値を得る。min()を使わずに自分で実装
			min_key = i;
			((i+1)..len).each do |n|
				min_key = n if array[n] < array[min_key]
			end

			# 入れ替える
			tmp = array[i]
			array[i] = array[min_key]
			array[min_key] = tmp
		end

		array
	end
	module_function :selection

end

p My_sort.selection([12,13,11,14,10]) === [10,11,12,13,14]
p My_sort.selection([11,13,0,17,19,23,-1,29,11,31]) === [-1,0,11,11,13,17,19,23,29,31]
