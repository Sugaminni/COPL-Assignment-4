--  Package body implementing arithmetic operations for complex numbers

package body Complex_Numbers is

   --  Function to add two complex numbers
   --  (a + bi) + (c + di) = (a+c) + (b+d)i
   function Add(X, Y : Complex) return Complex is
      Result : Complex;
   begin
      Result.Re := X.Re + Y.Re;
      Result.Im := X.Im + Y.Im;
      return Result;
   end Add;

   -- Function to subtract two complex numbers
   -- (a + bi) - (c + di) = (a - c) + (b - d)i
   function Subtract(X, Y : Complex) return Complex is
      Result : Complex;
   begin
      Result.Re := X.Re - Y.Re;
      Result.Im := X.Im - Y.Im;
      return Result;
   end Subtract;

   -- Function to multiply two complex numbers
   -- (a + bi) * (c + di) = (ac - bd) + (ad + bc)i
   function Multiply(X, Y : Complex) return Complex is
      Result : Complex;
   begin
      Result.Re := X.Re * Y.Re - X.Im * Y.Im;
      Result.Im := X.Re * Y.Im + X.Im * Y.Re;
      return Result;
   end Multiply;

   -- Function to divide two complex numbers
   -- (a + bi) / (c + di) = [(ac + bd)/(c^2 + d^2)] + [(bc - ad)/(c^2 + d^2)]i
   function Divide(X, Y : Complex) return Complex is
      Denom : Float := Y.Re * Y.Re + Y.Im * Y.Im;
      Result : Complex;
   begin
      -- Calculates the real part of the quotient
      Result.Re := (X.Re * Y.Re + X.Im * Y.Im) / Denom;

      -- Calculates the imaginary part of the quotient
      Result.Im := (X.Im * Y.Re - X.Re * Y.Im) / Denom;

      return Result;
   end Divide;

end Complex_Numbers;
