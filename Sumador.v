module SumadorCompleto(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
);
    assign S = A ^ B ^ Cin; // Calcula la suma
    assign Cout = (A & B) | (B & Cin) | (A & Cin); // Calcula el acarreo de salida
endmodule

module main;
    reg A;
    reg B;
    reg Cin;
    wire S;
    wire Cout;

    // Instancia del sumador completo
    SumadorCompleto sumador (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        // Prueba todas las combinaciones de entrada
        $display("A B Cin  | S Cout"); // Encabezado de la tabla de verdad
        A = 0; B = 0; Cin = 0; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 0; B = 0; Cin = 1; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 0; B = 1; Cin = 0; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 0; B = 1; Cin = 1; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 1; B = 0; Cin = 0; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 1; B = 0; Cin = 1; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 1; B = 1; Cin = 0; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);
        A = 1; B = 1; Cin = 1; #10; $display("%b %b  %b   | %b   %b", A, B, Cin, S, Cout);

        $finish;
    end
endmodule
