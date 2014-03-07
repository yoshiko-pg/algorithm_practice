=begin
「アルゴリズムをはじめよう」第４章
線形探索法
=end

module My_search

	# array内にsrcが見つかればkeyを返す
	def linear (array, src)

		array.each_with_index do |num, index|
			if num == src
				return index
			end
		end

		false
	end
	module_function :linear

end

p My_search.linear([4,2,3,5,1], 5) === 3
p My_search.linear([35,0,33,-1,4], 33) === 2
p My_search.linear([2,5,3,7,4], 9) === false
