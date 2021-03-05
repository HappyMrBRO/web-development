PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
VAR
  P: INTEGER;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
   IF Pos(GetEnv('QUERY_STRING'), Key) <> '0'
   THEN
     P := Pos(GetEnv('QUERY_STRING'), Key);
     
BEGIN {WorkWithQueryString}
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
