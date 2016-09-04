/*
    AEB Import FDF Methods

    Copyright (C) 2006--2016 AcroTeX.Net
    D. P. Story
    http://www.acrotex.net

    Version 1.0
*/
if ( typeof aebTrustedFunctions == "undefined") {
    aebTrustedFunctions = app.trustedFunction( function ( doc, oFunction, oArgs )
    {
        app.beginPriv();
            var retn = oFunction( oArgs, doc )
        app.endPriv();
        return retn;
    });
}
aebImportAnFDF = app.trustPropagatorFunction( function ( oArgs, doc )
{
    app.beginPriv();
        doc.importAnFDF(oArgs);
    app.endPriv();
});
