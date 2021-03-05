PROGRAM PaulRevere(INPUT, OUTPUT);
USES
  DOS;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  IF ((GetEnv('QUERY_STRING')) = 'lantern=1') or ((GetEnv('QUERY_STRING')) = 'lantern=2')
  THEN
    BEGIN
      WRITE('The British are coming by ');
      IF (GetEnv('QUERY_STRING')) = 'lantern=1'
      THEN
        WRITELN('land')
      ELSE
        IF (GetEnv('QUERY_STRING')) = 'lantern=2'
        THEN
          WRITELN('sea')
    END
  ELSE
    WRITELN('Sarah didn'' say')
END.
