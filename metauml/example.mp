input metauml;

%Class diagram
%"+" for public, "#" for protected and "−" for private
beginfig(1);
    Class.Part(
        "Part"
    ) (
        "+PartNumber:string",
        "+Condition:string",
        "+Qty:int",
        "#TranState:tsenum",
        "-PrivateInfo:int"
    ) (
        "+sell(price:decimal, qty:int):bool",
        "+forecast(qty:int):int",
        "#toString():string",
        "-calcPrivateStuff():void"
    );

    classStereotypes.Part("<<Object>>");

    Class.ILSPart("ILSPart")("+ILSQty:int")("+CheckILS():void");

    classStereotypes.ILSPart("<<Object>>", "<<Part>>");

    leftToRight(30)(Part, ILSPart);
    
    drawObjects(Part, ILSPart);

    clink(inheritance)(ILSPart, Part);
endfig;

%Use Case Diagram
beginfig(2);
    Actor.user("User");
    Actor.dba("Database Admin");

    Usecase.dbquery("Query database");
    Usecase.auth("Authentification");

    Usecase.authA("Authentification by", "username, password");
    Usecase.authB("Authentification by", "smartcard");

    topToBottom(30)(dba.human, user.human);
    leftToRight(30)(dba.human, dbquery);
    leftToRight(30)(user.human, auth, authA);
    topToBottom(30)(authA, authB);

    drawObjects(dba, dbquery, authA, user, auth, authB);

    clink(inheritance)(authA, auth);
    clink(inheritance)(authB, auth);
    clink(associationUni)(auth, dbquery);
    clink(associationUni)(user.human, auth);
    clink(associationUni)(dba.human, dbquery);
endfig;

end
