var i,n,count: word;
    inp, oup: text;
begin
    assign(inp,'in.txt');reset(inp);
    assign(oup,'out.txt');rewrite(oup);
    while not eof(inp) do
        begin 
            read(inp,n);
            count := 0;
            for i:= 1 to n do 
                if (n mod i = 0) then count := count + 1;
            if count = 2 then writeln(oup,'True') else writeln(oup,'False');
        end;
    close(inp);close(oup);
    readln
end.