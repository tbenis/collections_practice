
def sort_array_asc(arr)
    arr.sort
end
def sort_array_desc(arr)
    arr.sort do |a,b|
        b <=> a
    end
end
def sort_array_char_count(arr)
    arr.sort_by(&:length)
end

def swap_elements_from_to(arr, index, destination_index)
    first_index = arr[index]
    second_index = arr[destination_index]
    arr.insert(index, second_index)
    arr.insert(destination_index, first_index)
    arr.pop()
    arr.pop()
    return arr
end

def swap_elements(arr)
    swap_elements_from_to(arr, 1,2)
end
def reverse_array(arr)
    arr.reverse
end
def kesha_maker(arr)
    newArr = []
    arr.collect do |x| 
        x[2] = '$'
        newArr << x
    end
    newArr
end
def find_a(arr)
    newArr = []
    arr.collect do |x| 
        if x[0] == 'a'
            newArr << x            
        end
    end
    return newArr
end
def sum_array(arr)
    arr.inject(0) {|sum, num| sum += num}
end
def add_s(arr)
    newArr = []
    arr.each.with_index do |el,i| 
        if i == 1
            newArr << el
        else
            puts el[el.length-1]
            el[el.length] = "s"
            newArr << el
        end
    end
end