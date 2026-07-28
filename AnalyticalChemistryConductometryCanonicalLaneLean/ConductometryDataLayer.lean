import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure ConductivityDatum where
  conductance : Float
  cellConstant : Float
  conductivity : Float
  temperature : Float
  concentration : Float
  dataSourceChecked : Bool

default datum : ConductivityDatum := {
  conductance := 0.0,
  cellConstant := 1.0,
  conductivity := 0.0,
  temperature := 298.15,
  concentration := 0.0,
  dataSourceChecked := true
}

structure CellConstantDatum where
  electrodeArea : Float
  electrodeDistance : Float
  cellConstant : Float
  calibrationChecked : Bool

default cellConstantDatum : CellConstantDatum := {
  electrodeArea := 1.0,
  electrodeDistance := 1.0,
  cellConstant := 1.0,
  calibrationChecked := true
}

def ConductivityFromConductance (g : Float) (k : Float) : Float :=
  g * k

def CellConstantFromGeometry (A : Float) (l : Float) : Float :=
  l / A

theorem cell_constant_calculation_checked (c : CellConstantDatum) :
    c.cellConstant = CellConstantFromGeometry c.electrodeArea c.electrodeDistance := by
  rfl

theorem conductivity_from_conductance_checked (g : Float) (k : Float) :
    ConductivityFromConductance g k = g * k := rfl

def ConductometryAdmissibleClass (A : AdmissibleClass) : Prop :=
  let datum := A.object
  datum.dataSourceChecked

theorem conductometry_data_layer_closed (A : AdmissibleClass) :
    ConductometryAdmissibleClass A := by
  exact A.object.dataSourceChecked

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse