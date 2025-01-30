```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Last_Index : Integer := 0; 
begin
   for I in Arr'Range loop
      if Arr(I) = 5 then
         Last_Index := I; 
         exit;
      end if;
   end loop;
   -- Now, Last_Index will contain a safe value
   if Last_Index > 0 then 
       Put_Line(Arr(Last_Index));
   else
       Put_Line("Value not found");
   end if; 
end Example;
```