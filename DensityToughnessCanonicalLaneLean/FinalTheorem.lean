import HautevilleHouse.DensityToughnessCanonicalLaneLean.DensityToughnessAdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

def ConstrainedDensityToughnessClosure (A : AdmissibleDensityToughnessObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_density_toughness_endgame (A : AdmissibleDensityToughnessObject) :
  ConstrainedDensityToughnessClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DensityToughnessCanonicalLaneLean
end HautevilleHouse