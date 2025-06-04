// Módulo sumador completo de un bit
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
