-- Лабораторна робота №5
-- Варіант 9
-- a = min(B*MZ + Z*(MR*MX))
-- Якимчук Кіріл Сергійович
-- Група ІМ-24
-- Дата 17.05.2025

with Ada.Text_IO; use Ada.Text_IO;
with Data; use Data;

procedure Lab5 is
    task T2 is
        entry invoke(MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN);
        entry getA(a2_param: out Integer);
    end T2;

    task body T2 is
        a2: Integer;
        B, Z : VectorN;
        MR : Matrix;
        MXh, MZh, MR_MX : MatrixH;
        Z_MR_MX, B_MZ : VectorH;
        vectorSum: VectorH;
    begin
        Put_Line("Task T2 Started");

        accept invoke (MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN) do
            B := B_param;
            Z := Z_param;
            MR := MR_param;
            MXh := MXh_param;
            MZh := MZh_param;
        end invoke;

        -- Обчислення a2
        B_MZ := multiplyVectorByMatrix (B, MZh);
        MR_MX := multiplyMatrixByMatrix (MR, MXh);
        Z_MR_MX := multiplyVectorByMatrix (Z, MR_MX);
        vectorSum := addTwoVectors (Z_MR_MX, B_MZ);
        a2 := findMinumumFromVector(vectorSum);

        Put_Line("Task T2 Finished");

        accept getA (a2_param : out Integer) do
            a2_param := a2;
        end getA;
    end T2;

    task T3 is
        entry invoke(MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN);
        entry getA(a3_param: out Integer);
    end T3;

    task body T3 is
        a3: Integer;
        B, Z : VectorN;
        MR : Matrix;
        MXh, MZh, MR_MX : MatrixH;
        Z_MR_MX, B_MZ : VectorH;
        vectorSum: VectorH;
    begin
        Put_Line("Task T3 Started");

        accept invoke (MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN) do
            B := B_param;
            Z := Z_param;
            MR := MR_param;
            MXh := MXh_param;
            MZh := MZh_param;
        end invoke;

        -- Обчислення a3
        B_MZ := multiplyVectorByMatrix (B, MZh);
        MR_MX := multiplyMatrixByMatrix (MR, MXh);
        Z_MR_MX := multiplyVectorByMatrix (Z, MR_MX);
        vectorSum := addTwoVectors (Z_MR_MX, B_MZ);
        a3 := findMinumumFromVector(vectorSum);

        Put_Line("Task T3 Finished");

        accept getA (a3_param : out Integer) do
            a3_param := a3;
        end getA;
    end T2;

    task T4 is
        entry invoke(MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN);
        entry getA(a4_param: out Integer);
    end T4;

    task body T4 is
        a4: Integer;
        B, Z : VectorN;
        MR : Matrix;
        MXh, MZh, MR_MX : MatrixH;
        Z_MR_MX, B_MZ : VectorH;
        vectorSum: VectorH;
    begin
        Put_Line("Task T4 Started");

        accept invoke (MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN) do
            B := B_param;
            Z := Z_param;
            MR := MR_param;
            MXh := MXh_param;
            MZh := MZh_param;
        end invoke;

        -- Обчислення a4
        B_MZ := multiplyVectorByMatrix (B, MZh);
        MR_MX := multiplyMatrixByMatrix (MR, MXh);
        Z_MR_MX := multiplyVectorByMatrix (Z, MR_MX);
        vectorSum := addTwoVectors (Z_MR_MX, B_MZ);
        a2 := findMinumumFromVector(vectorSum);

        Put_Line("Task T4 Finished");

        accept getA (a4_param : out Integer) do
            a4_param := a4;
        end getA;
    end T2;

    task T5 is
        entry invoke(MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN);
        entry getA(a5_param: out Integer);
    end T5;

    task body T5 is
        a5: Integer;
        B, Z : VectorN;
        MR : Matrix;
        MXh, MZh, MR_MX : MatrixH;
        Z_MR_MX, B_MZ : VectorH;
        vectorSum: VectorH;
    begin
        Put_Line("Task T5 Started");

        accept invoke (MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN) do
            B := B_param;
            Z := Z_param;
            MR := MR_param;
            MXh := MXh_param;
            MZh := MZh_param;
        end invoke;

        -- Обчислення a2
        B_MZ := multiplyVectorByMatrix (B, MZh);
        MR_MX := multiplyMatrixByMatrix (MR, MXh);
        Z_MR_MX := multiplyVectorByMatrix (Z, MR_MX);
        vectorSum := addTwoVectors (Z_MR_MX, B_MZ);
        a5 := findMinumumFromVector(vectorSum);

        Put_Line("Task T5 Finished");

        accept getA (a5_param : out Integer) do
            a5_param := a5;
        end getA;
    end T5;

    task T6 is
        entry invoke(MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN);
        entry getA(a6_param: out Integer);
    end T6;

    task body T6 is
        a6: Integer;
        B, Z : VectorN;
        MR : Matrix;
        MXh, MZh, MR_MX : MatrixH;
        Z_MR_MX, B_MZ : VectorH;
        vectorSum: VectorH;
    begin
        Put_Line("Task T6 Started");

        accept invoke (MXh_param, MZh_param : in MatrixH; MR_param : in Matrix; B_param, Z_param : in VectorN) do
            B := B_param;
            Z := Z_param;
            MR := MR_param;
            MXh := MXh_param;
            MZh := MZh_param;
        end invoke;

        -- Обчислення a6
        B_MZ := multiplyVectorByMatrix (B, MZh);
        MR_MX := multiplyMatrixByMatrix (MR, MXh);
        Z_MR_MX := multiplyVectorByMatrix (Z, MR_MX);
        vectorSum := addTwoVectors (Z_MR_MX, B_MZ);
        a6 := findMinumumFromVector(vectorSum);

        Put_Line("Task T6 Finished");

        accept getA (a6_param : out Integer) do
            a6_param := a6;
        end getA;
    end T6;

    task body T1 is
        a1, a : Integer;
        a2, a3, a4, a5, a6 : Integer;
        B, Z : VectorN;
        MX, MZ, MR : Matrix;
        MXh, MZh, MR_MX : MatrixH;
        Z_MR_MX, B_MZ : VectorH;
        vectorSum: VectorH;
    begin
        Put_Line("Task T1 Started");

        B := fillVector;
        Z := fillVector;

        MX := fillMatrix;
        MZ := fillMatrix;
        MR := fillMatrix;

        MXh := fillSubMatrix(2, MX);
        MZh := fillSubMatrix(2, MZ);
        T2.invoke(MXh, MZh, MR, B, Z);

        MXh := fillSubMatrix(3, MX);
        MZh := fillSubMatrix(3, MZ);
        T3.invoke(MXh, MZh, MR, B, Z);

        MXh := fillSubMatrix(4, MX);
        MZh := fillSubMatrix(4, MZ);
        T4.invoke(MXh, MZh, MR, B, Z);

        MXh := fillSubMatrix(5, MX);
        MZh := fillSubMatrix(5, MZ);
        T5.invoke(MXh, MZh, MR, B, Z);

        MXh := fillSubMatrix(6, MX);
        MZh := fillSubMatrix(6, MZ);
        T6.invoke(MXh, MZh, MR, B, Z);

        -- Обчислення a = min(B * MZ + Z * (MR * MX))
        B_MZ := multiplyVectorByMatrix(B, MZ);
        MR_MX := multiplyMatrixByMatrix(MR, MX);
        Z_MR_MX := multiplyVectorByMatrix(Z, MR_MX);

        -- a1 = min(B_MZ + Z_MR_MX)
        vectorSum := addTwoVectors(B_MZ, Z_MR_MX);
        a1 := findMinumumFromVector(vectorSum);
        a := a1;

        -- Отримання a
        T2.getA(a2);
        T3.getA(a3);
        T4.getA(a4);
        T5.getA(a5);
        T6.getA(a6);

        if a2 < a then a := a2; end if;
        if a3 < a then a := a3; end if;
        if a4 < a then a := a4; end if;
        if a5 < a then a := a5; end if;
        if a6 < a then a := a6; end if;

        Put_Line("Result: a = " & Integer'Image(a));
        Put_Line("Task T1 Finished");
    end T1;

begin
    null;
end Lab5;
