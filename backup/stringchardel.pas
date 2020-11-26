unit stringchardel;

{$mode objfpc}{$H+}

interface
  //fonction qui suprime un carcatere dans une chaine de caractere
   function Fdelete(mot : string; lettre:char):string;


implementation

 function Fdelete(mot:string; lettre:char):string;
 var
 Resultat:string;
 condition:boolean;
 i        :integer;
 mots      : string;
 begin
      Resultat:='';
      condition:=False;

         for i:=1 to length(mots)do
             begin
                  if ((mots[i]<> lettre) or (condition=True)) then
                     Resultat:=Resultat+mots[i]
                  else
                      condition:=True;
               end;

        Fdelete:=Resultat;
 end;
end.

