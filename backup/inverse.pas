unit inverse;

interface
 //fonction qui inverse une chaine de charractere
 function Finverse(word: string): string;
 //fonction qui suprime un carcatere dans une chaine de caractere
   function Fdelete(mot : string; lettre:char):string;

implementation

 function Finverse(word: string): string;
 var
    i: integer; //compteur
    Resultat: string;
    begin
      for i:= length(word)  downto 1 do
          resultat := resultat+word[i];
          Finverse:= resultat
    end;

 //---------------------------------------------------------------------------//

    function Fdelete(mot:string; lettre:char):string;
 var
 Resultat:string;
 condition:boolean;
 i        :integer;
 //mots      : string;
 begin
      Resultat:='';
      condition:=False;

         for i:=1 to length(mot)do
             begin
                  if ((mot[i]<> lettre) or (condition=True)) then
                     Resultat:=Resultat+mot[i]
                  else
                      condition:=True;
               end;

        Fdelete:=Resultat;
 end;
end.

