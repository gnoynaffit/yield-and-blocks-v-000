def hello_t(array)
    i = 0
    collection = []
    while i < array.length
      array << yield(array[i])
      i = i + 1
    end
    array
end
# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
