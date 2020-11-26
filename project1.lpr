program project1;

uses SysUtils, Classes, BlibiothequeString {stringchardel}; //appelle de la classe inverse

var  word    :string;
     word2   :string;
     action :integer;
     lettre    :char;


begin
  writeln('Bienvenue dans notre programme sur les String');
  writeln('Que voulez vous faire ? ');
  writeln('1: inverse un mot');
  writeln('2: supprime un lettre');
  writeln('3: Teste de palindrome');
  writeln('4: recherche de lettre dans un mot');
  writeln('5: occurence de caractere');
  writeln('6:Teste d''anagramme');
  readln(action);
  if (action=1) then
  Begin
     writeln('entrer un mot que vous voulez inverse');
     readln(word);
     writeln(Finverse(word));
     readln()
  end
  else if (action=2) then
  Begin
     writeln('entre le mot que vous voulez corrige');
     readln(word);
     writeln('entrer la lettre que vous voulez supprime');
     readln(lettre);
     writeln(Fdelete(word, lettre));
     readln();
  end
  else if (action=3) then
  Begin
     writeln('entre le mot que voulez tester');
     readln(word);
     Finverse(word);
     //writeln(Finverse(mot));
     if (Finverse(word)=word) then
     Begin
          writeln('ce mot est un palindrome');
          readln()
     end
     else
     Begin
     writeln('ce mot n''est pas un palendrome');
     readln();
     end;
  end
  else if (action=4) then
  Begin
     writeln('entre le mot que vous voulez recherche');
     readln(word);
     writeln('entrer la lettre que vous voulez trouve');
     readln(lettre);
     writeln(FCharInString (word, lettre));
     readln();
  end
  else if (action=5) then   ///easyyyyyyyy
  Begin
     writeln('entre le mot que vous voulez recherche');
     readln(word);
     writeln('entrer la lettre que vous voulez trouve');
     readln(lettre);
     writeln(FoccuString (word, lettre));
     readln();
  end
  else if (action=6) then
  Begin
     writeln('entre le 1 mot que vous voulez testé');
     readln(word);
     writeln('entre le 2 mot que vous voulez testé');
     readln(word2);
     verIfier (word2,word);
   end

end.

