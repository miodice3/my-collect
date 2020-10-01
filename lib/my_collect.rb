require 'pry'

def my_collect(array)
    i=0
    modified = []
    while i < array.length
        var1 = yield array[i]
        modified << var1
        #binding.pry
        i += 1
    end
    modified
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

