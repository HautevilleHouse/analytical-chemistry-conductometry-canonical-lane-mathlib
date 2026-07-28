import AnalyticalChemistryConductometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryConductometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.object.measuredConductance.value > 0,
    A.object.object.concentration.value > 0,
    A.object.object.limitingMolarConductivity > 0⟩

end AnalyticalChemistryConductometryCanonicalLaneLean
end HautevilleHouse