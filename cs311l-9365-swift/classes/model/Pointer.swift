struct Pointer{
    var x: Int
    var y: Int

    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
    
    public func getX() -> Int {
        return x
    }

    public func getY() -> Int {
        return y
    }
}