import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure ConductanceDatum where
  solutionConductance : ℝ
  cellConstant : ℝ
  concentration : ℝ
  temperature : ℝ
  dissociationDegree : ℝ

deriving Repr, DecidableEq

structure ConductivityCalibrationDatum where
  standardConductance : ℝ
  standardConcentration : ℝ
  cellConstantCalculated : ℝ

deriving Repr, DecidableEq

structure ConductometryProjection where
  toFun : ConductanceDatum → ConductanceDatum
  idempotent : ∀ x, toFun (toFun x) = toFun x

def primitiveConductanceDatum : ConductanceDatum := {
  solutionConductance := 0.0,
  cellConstant := 1.0,
  concentration := 0.1,
  temperature := 298.15,
  dissociationDegree := 0.5
}

def primitiveCalibrationDatum : ConductivityCalibrationDatum := {
  standardConductance := 0.01,
  standardConcentration := 0.01,
  cellConstantCalculated := 1.0
}

def conductometryProjection : ConductometryProjection := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem conductometry_projection_idempotent (D : ConductanceDatum) :
    conductometryProjection.toFun (conductometryProjection.toFun D) = conductometryProjection.toFun D := by
  exact conductometryProjection.idempotent D

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse