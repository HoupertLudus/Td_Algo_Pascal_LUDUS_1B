program Type_Enum;

uses crt;


Type
     jours = (lundi,mardi,mercredi,jeudi,vendredi);


Type
     Bool = (True,False);




Type
     point = record

         x, y, z : real;

end;

Type 
    pointCoul = record

        p:point;
        coul:string;

end;

//Procedures et fonctions
function coincidePoint (mPoint,pPoint:pointCoul):Bool;
    
    var 
        test:Bool;


    begin

        //test si points =
        if (mPoint.p.x=pPoint.p.x) and (mPoint.p.y=pPoint.p.y) and (mPoint.p.z=pPoint.p.z)and (mPoint.coul=pPoint.coul) then

            test:=True
        else
            test:=False;

        coincidePoint:=test;

    end;

//programme principal

var
    j:jours;
    mPoint,pPoint:pointCoul;


BEGIN
    clrscr;

    writeln('Programme Type_Enum');

    {j:=lundi;//ou j:=jours.lundi;
    writeln(j);}


    mPoint.p.x:=0.0;
    mPoint.p.y:=0.0;
    mPoint.p.z:=0.0;
    mPoint.coul:='red';

    pPoint.p.x:=0.0;
    pPoint.p.y:=0.0;
    pPoint.p.z:=0.0;
    pPoint.coul:='red';

    if coincidePoint(mPoint,pPoint)=True then

            writeln('egaux')
    else
            writeln('diff');

    

    readln;


END.

