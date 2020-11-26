unit BlibiothequeString;

interface
 //fonction qui inverse une chaine de charractere
   function Finverse(word: string): string;
 //fonction qui suprime un carcatere dans une chaine de caractere
   function Fdelete(word : string; lettre:char):string;
 //fonction qui cherche si le paramètre est dans le word
   function FCharInString (word:string; lettre:char):Boolean;
 //fonction qui donne la position de l'occurence d'un caractère
   function FoccuString (word:string; lettre:char):Integer;
//function qui teste si 2 words sont des anagrammes   
   Function verIfier (word2,word : string):boolean;

implementation
//---------Inverse-String-----------------------------------------------------//
 function Finverse(word: string): string;
 var
    i: integer; //compteur
    Resultat: string;
    begin
      for i:= length(word)  downto 1 do
          resultat := resultat+word[i];
          Finverse:= resultat
    end;

 //-----------Delete-Char-----------------------------------------------------//

    function Fdelete(word:string; lettre:char):string;
 var
 Resultat:string;
 condition:boolean;
 i        :integer;
 //words      : string;
 begin
      Resultat:='';
      condition:=False;

         for i:=1 to length(word)do
             begin
                  if ((word[i]<> lettre) or (condition=True)) then
                     Resultat:=Resultat+word[i]
                  else
                      condition:=True;
               end;

        Fdelete:=Resultat;
 end;
//----------------char-in-string----------------------------------------------//
 function FCharInString (word:string; lettre:char):Boolean;
 var
 i: integer;
 Begin
      for i:=0 to length(word)do
      Begin
           if (word[i]=lettre) {and (FCharInString<>1))} then
           begin
                FCharInString:=TRUE;

           end
      end;
      if (FCharInString<>TRUE) then
      FCharInString :=FALSE
 end;
//--------------------FoccuString---------------------------------------------//
function FoccuString (word:string; lettre:char):Integer;// finishhhhhhhhhhhhhh
var
 i: integer;

Begin
    for i:=0 to length(word)do
    //writeln(i);
      Begin
           if (word[i]=lettre) {and (FoccuString<>1))} then
           //a:=(word[i]);
           //writeln(a);
           FoccuString:=i;
      end;
    if (FoccuString=0) then
      FoccuString :=-1
 end;
//---------------------------------anagramme-----------------------------------1//
Function verIfier (word2,word : string):boolean;
Var ok:boolean; i,l,p:integer; ch3:string;
Begin
l :=length(word2); ok:= true;
If l <> length (word) then ok:= false
 Else
Begin
For i:=1 to l Do
 ch3:= ch3 + upcase(word[i]);
 i:= 1;
Repeat                                               ;
 p:= pos(upcase(word2[i]),ch3);
If p = 0 then ok:= false
 Else Begin i:= i + 1; ch3[p] := '*'; End;
Until ((not ok) or (i > l));
End;
VerIfier := ok;

 if (verIfier=TRUE) then
 Begin
     writeln('anagramme yes');
     readln()
 end
 else
 Begin
     writeln('pas anagramme');
     readln()
 end;

end;
end.


