program Type_Intervalles_Ensembles;

uses crt;

//Intervalles
Type
     chiffre=0..9;

// un Ensemble (set)
Type
    Day=(lun,mar,mer,jeu,ven,sam,dim);
    Days=set of Day;


Procedure PrintDays(W : Days);  
Const  
  DayNames : array [Day] of String[3]  
           = ('lun','mar','mer','jeu',  
              'ven','sam','dim');  
Var  
  D : Day;  
  S : String;  

begin  
  S:='';  
  For D:=lun to dim do  
    if D in W then  
      begin  
      If (S<>'') then 
        S:=S+',';  
      
      S:=S+DayNames[D];  
      end;  
  Writeln('[',S,']');  
end;  
 
//programme principal

var
    val:chiffre;//intervalles
    W : Days;//ensemble (set)



BEGIN
    clrscr;

    writeln('Programme Type_Intervalles_Ensembles');

    
    val:=3;
    writeln(val);

    W:=[lun,mar]+[mer,jeu,ven]; // equals [lun,mar,mer,jeu,ven]  
    PrintDays(W);  
    W:=[lun,mar,mer]-[mer];     // equals [lun,mar]  
    PrintDays(W);  
    W:=[lun,mar,mer]-[mer,jeu];     // also equals [lun,mar]  
    PrintDays(W);  



    readln;


END.

