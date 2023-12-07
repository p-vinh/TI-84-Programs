
Menu("Richardson's Extrapolation","Richardson's Extrapolation",A,"Iterative Integration",B,"Quit",C)

Lbl A
Input "Give the function: ",Y
Input "Number of iterations: ",N
Input "Step size: ",H
Input "Point of evaluation: ",X

For(I,1,N)
For(J,1,I)
If J=0
Then
H/(2^I)->D
(Y(X+D)-Y(X-D))/(2*D)->[A](I,J)
Else
[A](I,J-1)+(([A](I,J-1)-[A](I-1,J-1))/(4^J-1))->[A](I,J)
End

If I=J
Then
Disp [A](I,J)
End

End
End

[A](N,N)->F
Disp F
Pause

Goto C

Lbl B
Input "Give the function: ",Y
Input "Number of iterations: ",N
Input "Step size: ",H
Input "Point of evaluation: ",X


For(I,1,N)
H/(2^I)->D
(Y(X+D)-Y(X-D))/(2*D)->M

Disp "Iteration",I
Disp "H/2^I",D
Disp "Y₀(X+H/2^I)-Y₀(X-H/2^I)"
Pause M

End

Goto C

Lbl C
Stop