package Data is
    N : constant := 6; -- розмір векторів та матриць
    H : constant := 2; -- розмір підматриці

    type VectorN is array (1 .. N) of Integer;
    type VectorH is array (1 .. N) of Integer;

    type Matrix is array (1 .. N) of VectorN;
    type MatrixH is array (1 .. N) of VectorH;

    function fillVector return VectorN;
    function fillMatrix return Matrix;
    function fillSubMatrix (Thread : Integer; matrix : Matrix) return MatrixH;

    function multiplyVectorByMatrix (vector : VectorN; matrix : MatrixH) return VectorH;
    function multiplyMatrixByMatrix (matrixA, matrixB : Matrix) return MatrixH;
    function addTwoVectors (vectorA, vectorB: VectorH) return VectorH;
    function findMinumumFromVector (vector: VectorH) return Integer;
end Data;
