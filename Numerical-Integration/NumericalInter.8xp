Disp "Give the function in Y₁"
Input "Number of iterations: ",N
Input "Lower limit(A): ",A
Input "Upper limit(B): ",B
fnInt(Y₁,X,A,B)→C
Disp "The (actual) integral is: "
Pause C

Menu("Numerical Integration","Trapzoid Method",A,"Romberg's Method",B,"Quit",C)

Lbl A

A→O
B→P
"h = B-A"
P-O→D
Disp "Iteration: 1"
((Y₁(O)+Y₁(P))/2)*D→M
Disp "The integral (approx) is: "
Pause M

For(I,2,N)
Disp "Iteration: "
Output(9,12,I)
D/2→D
"X0"
A→O
"X1"
A+D→P
0→M

For(J,1,2^(I-1))
M+((Y₁(O)+Y₁(P))/2)*D→M
"Swap O=Xn and P=Xn+1"
P→O
P+D→P
End

Disp "The integral (approx) is: "
Pause M
End
Goto C

Lbl B
{N,N}→dim([A])
B-A→H
"R(0,0)=((f(A)+f(B))/2)*H"
((Y₁(A)+Y₁(B))/2)*H→[A](1,1)

Disp ""
Output(9,7,"0,0")
Output(9,11,[A](1,1))
Pause ""

For(I,2,N)
H/2→H
For(J,1,I)
If J=1
Then
"R(i,0)=(R(i-1,0)/2)+(h*Σf(a+(2k-1)h)"
([A](I-1,J)/2)+(H*Σ(Y₁(A+(2*K-1)*H),K,1,2^(I-2)))→[A](I,1)
Else
"R(i,j)=R(i-1,0)+(R(i,j-1)-R(i-1,j-1))/(4^j-1)"
[A](I,J-1)+([A](I,J-1)-[A](I-1,J-1))/(4^(J-1)-1)→[A](I,J)
End

Output(9,7,I-1)
Output(9,8,", ")
Output(9,9,J-1)
Output(9,11,[A](I,J))
Pause ""

End
End

Goto C

Lbl C
Stop