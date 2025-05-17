package body Data is

    function fillVector return VectorN is
        Result : VectorN;
    begin
        for i in 1 .. N loop
            Result(i) := 1;
        end loop;
        return Result;
    end fillVector;

    function fillMatrix return Matrix is
        Result : Matrix;
    begin
        for i in 1 .. N loop
            for j in 1 .. N loop
                Result(i)(j) := 1;
            end loop;
        end loop;
        return Result;
    end fillMatrix;

    function fillSubMatrix (Thread : Integer; matrix : Matrix) return MatrixH is
        Result : MatrixH;
    begin
        for i in 1 .. N loop
            for j in 1 .. H loop
                Result(i)(j) := matrix(i)(j + (Thread - 1) * H);
            end loop;
        end loop;
        return Result;
    end fillSubMatrix;

    function multiplyVectorByMatrix (vector : VectorN; matrix : MatrixH) return VectorH is
        Result : VectorH;
    begin
        for i in 1 .. H loop
            Result(i) := 0;
            for j in 1 .. N loop
                Result(i) := Result(i) + vector(j) * matrix(j)(i);
            end loop;
        end loop;
        return Result;
    end multiplyVectorByMatrix;

    function multiplyMatrixByMatrix (matrixA, matrixB : Matrix) return MatrixH is
        Result: MatrixH;
    begin
        for i in 1 .. N loop
            for j in 1 .. H loop
                Result(i)(j) := 0;
                for k in 1.. N loop
                    Result(i)(j) := Result(i)(j) + matrixA(i)(k) * matrixB(k)(j);
                end loop;
            end loop;
        end loop;
        return Result;
    end multiplyMatrixByMatrix;

    function addTwoVectors (vectorA, vectorB: VectorH) return VectorH is
        Result : VectorH;
    begin
        for i in 1 .. H loop
            Result(i) := vectorA(i) + vectorB(i);
        end loop;
        return Result;
    end addTwoVectors;

    function findMinumumFromVector (vector: VectorH) return Integer is
        Result : Integer;
    begin
        Result := vector(1);

        for i in 1 .. H loop
            if vector(i) < Result then
                Result := vector(i);
            end if;
        end loop;
        return Result;
    end findMinumumFromVector;

end Data;
