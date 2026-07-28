import HautevilleHouse.AnalyticalChemistryConductometryCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

def cellConstant : ℝ := 0.75
def limitingMolarConductivity : ℝ := 149.9
def concentration : ℝ := 0.01
def measuredResistance : ℝ := 1200.0

structure ConductometryConstantSpec where
  key : String
  value : ℝ
  derivation : String

def conductometryConstants : List ConductometryConstantSpec :=
  [
    { key := "cellConstant", value := cellConstant, derivation := "cell geometry" },
    { key := "limitingMolarConductivity", value := limitingMolarConductivity, derivation := "Kohlrausch extrapolation" },
    { key := "concentration", value := concentration, derivation := "prepared solution" },
    { key := "measuredResistance", value := measuredResistance, derivation := "conductivity bridge" }
  ]

theorem conductometry_constants_defined : conductometryConstants.length = 4 := by
  decide

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse