=begin
「アルゴリズムをはじめよう」第３章　５
配列の最大値を返す
=end

module My

	def max(array)

		max = 0

		array.each do |n|
			 max = n if max < n
		end

		max

	end
	module_function :max

end

p My.max([2,3,5,7,9]) === 9
p My.max([1,1,0,-4,1]) === 1
p My.max([43,7,22,100,0,83]) === 100
