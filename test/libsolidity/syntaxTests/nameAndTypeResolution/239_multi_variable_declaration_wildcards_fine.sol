contract C {
    function three() public returns (uint, uint, uint);
    function two() public returns (uint, uint);
    function none() public;
    function f() public {
        (uint a,) = three();
        (uint b, uint c,) = two();
        (,uint d) = three();
        (,uint e, uint g) = two();
        var (,,) = three();
        var () = none();
        a;b;c;d;e;g;
    }
}
// ----
// Warning: (179-198): Different number of components on the left hand side (2) than on the right hand side (3).
// Warning: (208-233): Different number of components on the left hand side (3) than on the right hand side (2).
// Warning: (243-262): Different number of components on the left hand side (2) than on the right hand side (3).
// Warning: (272-297): Different number of components on the left hand side (3) than on the right hand side (2).
