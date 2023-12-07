
Menu("Numerical Derivation","Richardson's Extrapolation",A,"Iterative Integration",B,"Quit",C)

Lbl A
Disp "Give the function in Y₁"
Input "Number of iterations: ",N
Input "Step size: ",H
Input "Point of evaluation: ",X

{N,N}→dim([A])

For(I,1,N)
For(J,1,I)

If J=1
Then
H/(2^I)→D
(Y₁(X+D)-Y₁(X-D))/(2*D)→[A](I,J)
Else
[A](I,J-1)+(([A](I,J-1)-[A](I-1,J-1))/(4^J))→[A](I,J)
End

Output(10,9,I-1)
Output(10,10,", ")
Output(10,11,J-1)
Output(10,13,[A](I,J))
Pause ""

End
End

Goto C

Lbl B
Disp "Give the function in Y₁"
Input "Number of iterations: ",N
Input "Step size: ",H
Input "Point of evaluation: ",X


For(I,0,N)
H/(2^I)→D
Disp D
Disp "Y(X+D)",Y₁(X+D)
Disp "Y(X-D)",Y₁(X-D)

((Y₁(X+D))-(Y₁(X-D)))/(2*D)→M

Disp "Iteration",I
Disp "H/2^I",D
Pause M

End

Goto C

Lbl C
Stop