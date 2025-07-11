--  Package specification for Complex_Numbers

package Complex_Numbers is

   --  Definition of a Complex number:
   --    Re holds the real part
   --    Im holds the imaginary part
   type Complex is record
      Re : Float;
      Im : Float;
   end record;

   --  Adds two complex numbers:
   --    (a + bi) + (c + di) = (a + c) + (b + d)i
   function Add(X, Y : Complex) return Complex;

   --  Subtracts two complex numbers:
   --    (a + bi) - (c + di) = (a - c) + (b - d)i
   function Subtract(X, Y : Complex) return Complex;

   --  Multiplies two complex numbers:
   --    (a + bi) * (c + di) = (ac - bd) + (ad + bc)i
   function Multiply(X, Y : Complex) return Complex;

   --  Divides two complex numbers:
   --    (a + bi) / (c + di)
   --      = [(ac + bd) / (c² + d²)] + [(bc - ad) / (c² + d²)]i
   function Divide(X, Y : Complex) return Complex;

end Complex_Numbers;
