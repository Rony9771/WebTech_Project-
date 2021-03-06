﻿function savePDF()
{
    var con = confirm("Are you sure you want to execute?");

    if (con == true) {
        var sTable = document.getElementById('table').innerHTML;
        var style = "<style>";
        style = style + "table{width: 100%;font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif;border-collapse: collapse;font-style: bold;}";
        style = style + "table th {border: 2px solid #ddd;}";
        style = style + "table td{border: 2px solid #000000;padding: 8px;}";
        style = style + "table tr:nth-child(even) {background-color: #f2f2f2;}";
        style = style + "table tr:nth-child(odd) {background-color: #E6E6FA;}";
        style = style + "table th {padding-top: 8px;padding-bottom: 8px;text-align: center;background-color: #2E8B57;color: white;}";
        style = style + "</style>";


        // CREATE A WINDOW OBJECT.
        var win = window.open('', '', 'height=700,width=700');

        win.document.write('<html><head>');
        win.document.write('<title>PDF</title>');   // <title> FOR PDF HEADER.
        win.document.write(style);          // ADD STYLE INSIDE THE HEAD TAG.
        win.document.write('</head>');
        win.document.write('<body>');
        win.document.write(sTable);         // THE TABLE CONTENTS INSIDE THE BODY TAG.
        win.document.write('</body></html>');

        win.document.close(); 	// CLOSE THE CURRENT WINDOW.

        win.print();    // PRINT THE CONTENTS.

        return true;
    }

    else {
        return false;
    }
}