=begin
「アルゴリズムをはじめよう」第８章
単純交換法
・隣り合ったデータを交換する処理を繰り返して、全体を整列する
=end

module My_sort

	def bubble (array)

		(1..array.length-1).reverse_each do |i|
			(1..i).reverse_each do |j|
				if array[j] < array[j-1]
					tmp = array[j-1]
					array[j-1] = array[j]
					array[j] = tmp
				end
			end
		end

		array
	end
	module_function :bubble

end

p My_sort.bubble([12,13,11,14,10]) === [10,11,12,13,14]
p My_sort.bubble([11,13,0,17,19,23,-1,29,11,31]) === [-1,0,11,11,13,17,19,23,29,31]
