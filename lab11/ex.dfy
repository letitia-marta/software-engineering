method test1 (x: int, y: int) returns (z: int)
{
    assume (x == y);
    z := x - y;
    assert (z == 0);
}

method test2 (x: int) returns (z: int)
{
    assume true;
    z := 100;
    assert (z == 100);
}

method test3 (x: int) returns (z: int)
{
    assume 0 <= x < 100;
    z := x + 1;
    assert (0 <= x <= 100);
}

method test4 (y: int) returns (x: int)
{
    assume true ;
    x := 2 * y;
    assert (y <= x);
}

method sum (n: int) returns (sum: int)
    requires n >= 0
    ensures sum == n * (n + 1) / 2
{
    sum := 0;
    var i := 1;
    while (i <= n)
        invariant i >= 0;
        invariant i <= n+1;
        invariant sum == i * (i - 1) / 2;
    {
        sum := sum + i;
        i := i + 1;
    }

}
