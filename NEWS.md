### 0.6.1

* generalized value container from Array to AbstractArray
* implemented element-wise boolean operators (!, &, |, $)
* implemented element-wise unary math operators (+, -)

### 0.6.0

* first version with support for Julia 0.4 only

### 0.5.11

* last version with support for Julia 0.3
* support for Julia 0.4 dropped, along with the Compat package

### 0.5.10

* changed references of flipud(A) to flipdim(A,1)_
* changed references of round(x) to iround(Integer,x)_
* changed references of iround(Integer,x) back to round(Integer,x)_
* changed references of int(x) to round(Int64, x)
* changed references of float(x) to map(Float64, x)
* changed references of [a] to [a;] in a comprehension found in the by() method
* added Compat package
* substantial speedup for element-wise mathematical operators

### 0.5.9

* added kwarg argument `format` to the `readtimearray` method to allow parsing datetime formats that are not 
currently supported.
* changed two references to `Range1` to `UnitRange`
* added import of Base.values. I had defined it first and I guess they like it so much they co-opted it. :)

### pre-0.5.8

Not currently documented.
