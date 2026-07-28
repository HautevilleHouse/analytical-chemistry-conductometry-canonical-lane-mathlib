import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat

deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat

deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/calibrate.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/measure.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 }
]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/calibrate.py", name := "CALIBRATION_DATA", path := "data/calibration.json", role := "input", line := 12 }
]

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse