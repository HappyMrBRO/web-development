PROGRAM HiName(INPUT, OUTPUT);
USES
  DOS;
VAR
  Line, Temple: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Line := GetEnv('QUERY_STRING');
  Temple := COPY(Line, 6, 100);
  IF Temple <> ''
  THEN
    WRITELN('Hello, dear ', Temple)
  ELSE
    WRITELN('Hello, deer Anonymous')
END.
