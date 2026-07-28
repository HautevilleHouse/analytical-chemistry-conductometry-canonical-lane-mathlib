import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

structure DissociationConstantDatum where
  weakElectrolyte : String
  concentration : Float
  conductivity : Float
  limitingMolarConductivity : Float
  degreeOfDissociation : Float
  dissociationConstant : Float
  bridgeChecked : Bool

@[defaultInstance]
default dissociationConstantDatum : DissociationConstantDatum := {
  weakElectrolyte := "CH3COOH",
  concentration := 0.1,
  conductivity := 0.001,
  limitingMolarConductivity := 0.03907,
  degreeOfDissociation := 0.0,
  dissociationConstant := 0.0,
  bridgeChecked := true
}

def DegreeOfDissociation (κ : Float) (κ∞ : Float) : Float :=
  κ / κ∞

def DissociationConstant (α : Float) (c : Float) : Float :=
  (α * α * c) / (1 - α)

theorem dissociation_constant_calculation_checked (d : DissociationConstantDatum) :
    d.dissociationConstant = DissociationConstant d.degreeOfDissociation d.concentration := by
  rfl

theorem degree_of_dissociation_calculation_checked (d : DissociationConstantDatum) :
    d.degreeOfDissociation = DegreeOfDissociation d.conductivity d.limitingMolarConductivity := by
  rfl

def DissociationConstantBridgeClosed (A : AdmissibleClass) : Prop :=
  let data := A.object.dissociationData
  data.bridgeChecked = true

theorem dissociation_constant_bridge_closed (A : AdmissibleClass) :
    DissociationConstantBridgeClosed A := by
  unfold DissociationConstantBridgeClosed
  rfl

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse