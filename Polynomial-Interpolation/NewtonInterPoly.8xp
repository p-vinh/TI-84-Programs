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
1→P
1→O
For(J,1,N)
For(I,N,J+1,­1)

(L₃(I)-L₃(I-1))/(L₁(I)-L₁(I-J))→L₃(I)
ClrHome
Output(P,O,"L₃(I)-L₃(I-1)")
Output(P,15,L₃(I)-L₃(I-1))

Output(P+1,O,"L₁(I)-L₁(I-J)")
Output(P+1,15,L₁(I)-L₁(I-J))

Output(P+2,O,"L₃(I)")
Output(P+2,7,L₃(I))
Pause ""
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
L₃(N)→M


For(I,N-1,1,­1)
M*(Z-L₁(I))+L₃(I)→M
End

Disp M

Lbl C
Stop