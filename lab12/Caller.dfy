method Triple (x: int) returns (r: int)
    ensures r == 3 * x
{
    var y := 2 * x;
    r := x + y;
}

method Triple1 (x: int) returns (r: int)
    requires x % 2 != 1
    ensures r == 3 * x
{
    var y := x / 2;
    r := 6 * y;
}

method Caller()
{
    var result := Triple (18);
    assert result < 100;
}
