=begin
「アルゴリズムをはじめよう」第６章
ハッシュ探索法
・探索しやすいように、あらかじめ関数を使ってデータを格納しておく
・格納するのに使った関数を使い、一発でデータを探索する
=end

module My_search

	# array内にsrcが見つかればkeyを返す
	def hash (array, src)

		hash_values = Array.new(array.length * 1.5)
		hash_keys   = Array.new(array.length * 1.5)
		par = hash_values.length

		hash = Proc.new {|num| num % par}

		# データの格納
		array.each_with_index do |n, index|
			key = hash.(n)
			while hash_values[key]
				key = hash.(key+1)
			end
			hash_values[key] = n
			hash_keys[key] = index
		end

		# データの探索
		key = hash.(src)
		until hash_values[key] === src
			return false unless hash_values[key]
			key = hash.(key+1)
		end
		hash_keys[key]

	end
	module_function :hash

end


p My_search.hash([11,15,23,26], 11) === 0
p My_search.hash([12,25,36,20,30,8,42], 8) === 5
p My_search.hash([12,25,36,20,30,8,42], 30) === 4
p My_search.hash([12,25,36,20,30,8,42], 50) === false
