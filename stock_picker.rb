def stock_picker(arr)
  # check corner cases

  arr[0] == arr.max ? max = arr.index((arr[1..-1]).max) : max = arr.index(arr.max)
  arr[-1] == arr.min ? min = arr.index((arr[0..-2]).min) : min = arr.index(arr.min)

  if min < max
    [min, max]
  elsif min > max
    min = arr.index(arr[0..max].min)
    [min, max]
  end
end