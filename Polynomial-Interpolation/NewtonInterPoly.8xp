Menu("Newton's Interpolation Polynomial","Coefficient of Binomial Expansion",A,"Evaluate the Polynomial",B,"Exit",C)

"Coefficients of Binomial Expansion"
Lbl A
"xs L₁"
Disp "Enter the x's of the points:"
Prompt L₁

"ys L₂"
Disp "Enter the y's of the points:"
Prompt L₂
dim(L₁)→N
"L₃ will have cs(coefficient of binomial expansion)"

For(I,1,N)
L₂(I)→L₃(I)
End

For(J,1,N)
For(I,N,J+1,­1)

(L₃(I)-L₃(I-1))/(L₁(I)-L₁(I-J))→L₃(I)
End
End

Goto C

"Eval Newton's Interpolation Polynomial"
Lbl B
Disp "Enter the List of x's:"
Prompt L₁
Disp "Enter the list of coefficients:"
Prompt L₃
Disp "Enter the x value to evaluate:"
Prompt Z

dim(L₁)→N
L₃(N-1)→M

For(I,(N-1),1,­1)
M*(Z-L₁(I))+L₃(I)→M
End

Disp M

Lbl C
Stop