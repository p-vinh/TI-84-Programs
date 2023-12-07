
Menu("Numerical Integration","Trapzoid Method",A,"Romberg's Method",B,"Quit",C)

Disp "Give the function in Y₁"
Input "Number of iterations: ",N
Input "Lower limit: ",A
Input "Upper limit: ",B

Lbl A

fnInt(Y₁,X,A,B)→C
Disp "The integral is: ",C
Pause

A→O
B→P
"h = B-A"
P-O→D
Disp "Iteration: 1"
((Y₁(O)+Y₁(P))/2)*D→M
Pause M

For(I,2,N)
Disp "Iteration: ",I
D/2→D
"X0"
A→O
"X1"
A+D→P

For(J,1,2^(I-1))
M+((Y₁(O)+Y₁(P))/2)*D→M
"Swap O=Xn and P=Xn+1"
P→O
P+D→P
End

Disp "The integral is: ",M
Pause
End
Goto C

Lbl B



Goto C

Lbl C
Stop