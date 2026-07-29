import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DensityOperatorClosed A.object ∧ ToughnessFunctionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h1 : DensityOperatorClosed A.object := by
    exact A.endpointSatisfied.1
  have h2 : ToughnessFunctionClosed A.object := by
    exact A.endpointSatisfied.2
  exact And.intro h1 h2

end DensityToughnessCanonicalLaneLean
end HautevilleHouse