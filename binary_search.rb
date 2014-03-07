=begin
「アルゴリズムをはじめよう」第５章
二分探索法
・あらかじめ昇順か降順に整列されているデータが対象
・探索する範囲を半分に絞りながら探索を進める
=end

module My_search

	# array内にsrcが見つかればkeyを返す
	def binary (array, src)

		head = 0
		tail = array.length

		while head <= tail
			
			center = (head + tail) / 2

			if array[center] === src
				return center

			elsif array[center] < src
				head = center + 1

			elsif array[center] > src
				tail = center - 1

			end

		end

		false

	end
	module_function :binary

end

p My_search.binary([11,13,17,19,23,29,31], 17) === 2
p My_search.binary([11,13,17,19,23,29,31], 18) === false

