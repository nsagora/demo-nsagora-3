// Playground - noun: a place where people can play

func fibonacci(n:Int)->Int {
    return (n < 2) ? 1 : fibonacci(n-2) + fibonacci(n-1);
}

fibonacci(1)


0x100_000_000
-0x100_000_000
1.79769e+308
1.7976931348623157E+308
2.22507e-308


class x {
    var x:Int!
    var y:Int?
}

var z = x()
("\(z.x)")
("\(z.y)")

var h:Int = z.x
var g:Int = z.y!

z.x = 10
z.y = 20

("\(z.x)")
("\(z.y)")

