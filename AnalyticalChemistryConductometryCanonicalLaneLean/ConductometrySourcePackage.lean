import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool

deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool

deriving Repr, DecidableEq

def sourceCheckoutHead : String := "conductometry_package_v1.0"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [ { path := "scripts/calibrate.py", sha256 := "abc123", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true },
    { path := "scripts/measure.py", sha256 := "def456", functionCount := 7, classCount := 1, assignmentCount := 4, parseOk := true } ]

def sourceFunctions : List SourceFunctionDecl :=
  [ { file := "scripts/calibrate.py", name := "compute_cell_constant", args := ["conductance", "concentration"], returns := "float", doc := "", line := 10, isAsync := false } ]

def sourceClasses : List SourceClassDecl :=
  [ { file := "scripts/measure.py", name := "ConductivityCell", bases := [], doc := "", line := 5 } ]

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat

deriving Repr, DecidableEq

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse