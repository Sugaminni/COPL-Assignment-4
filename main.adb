with Ada.Text_IO;
with Complex_Numbers;

procedure Main is
   A, B, Result : Complex_Numbers.Complex;
begin
   -- Creates two complex numbers
   A.Re := 4.0;
   A.Im := 3.0;

   B.Re := 2.0;
   B.Im := 1.0;

   -- Displays A Output
   Ada.Text_IO.Put_Line("Complex A: " &
      Float'Image(A.Re) & " + " & Float'Image(A.Im) & "i");

   -- Displays B Output
   Ada.Text_IO.Put_Line("Complex B: " &
      Float'Image(B.Re) & " + " & Float'Image(B.Im) & "i");

   -- Addition Method
   Result := Complex_Numbers.Add(A, B);
   Ada.Text_IO.Put_Line("A + B = " &
      Float'Image(Result.Re) & " + " & Float'Image(Result.Im) & "i");

   -- Subtract Method
   Result := Complex_Numbers.Subtract(A, B);
   Ada.Text_IO.Put_Line("A - B = " &
      Float'Image(Result.Re) & " + " & Float'Image(Result.Im) & "i");

   -- Multiply Method
   Result := Complex_Numbers.Multiply(A, B);
   Ada.Text_IO.Put_Line("A * B = " &
      Float'Image(Result.Re) & " + " & Float'Image(Result.Im) & "i");

   -- Divide Method
   Result := Complex_Numbers.Divide(A, B);
   Ada.Text_IO.Put_Line("A / B = " &
      Float'Image(Result.Re) & " + " & Float'Image(Result.Im) & "i");

end Main;
