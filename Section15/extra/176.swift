class Assignment {
    func fibonacci(n: Int) {
    
        var res = [0, 1]
        for _ in 2..<n{
            res.append(res[res.count - 1]+res[res.count - 2])
        }
        if n == 1{
            print([0])
        } else{
            print(res)
        }
    }
}