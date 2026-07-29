import DensityToughnessCanonicalLaneLean.DensityToughnessGateLemmas

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

def ConstrainedDensityToughnessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_density_toughness_endgame (A : AdmissibleClass) :
    ConstrainedDensityToughnessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DensityToughnessCanonicalLaneLean
end HautevilleHouse