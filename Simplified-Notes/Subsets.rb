
#      for each arr[i], copy all previous cells into the 
#      next new cells of matrix (matrix[i]). 
#      push the current arr[i] into each new cell (matrix[i]).


mat = [
    []
]

i = 0
until i === nums.length

    start = mat.length

    mat = copy(mat, start)

    mat = place_in_copy(mat, nums[i], start)

    i+=1
end

def place_in_copy(mat, num, start)

    i = start
    until i === mat.length
        mat[i] = mat[i].clone
        mat[i].push(num)
        i+=1
    end

    mat    
end

def copy(mat, start)

    n = mat.length
    arr = []

    i = 0
    until i === n
        arr[i] = mat[i];
        i+=1
    end

    arr.reverse

    i = start
    until arr.empty?
        mat[i] = arr.pop()
        i+=1
    end

    mat
end