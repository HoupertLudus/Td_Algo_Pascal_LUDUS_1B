program Fichiers;

uses crt;


//programme principal

var
    f:TextFile;//ou Text
    nom:string;
    nomM:string;
    choix:char;



BEGIN
    clrscr;

    writeln('Programme Fichiers');

    Assign(f,'init.txt');
    Rewrite(f);
    writeln('Entrez un nom d''utilisateur :');
    readln(nom);
    nom:='Dernier utilisateur :'+nom;
    writeln(f,nom);
    close(f);
    writeln('voulez-vous lire le fichier ini.txt? [O/N]');
    choix:=ReadKey;

    if(upCase(choix)='O') then
        BEGIN
            Reset(f);
            readln(f,nomM);
            writeln(nomM);
            close(f)       
        END;

    readln;


END.

