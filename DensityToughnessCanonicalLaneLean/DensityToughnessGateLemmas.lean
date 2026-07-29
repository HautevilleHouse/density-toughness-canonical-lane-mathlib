import DensityToughnessCanonicalLaneLean.DensityToughnessBridgeLemmas

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DensityToughnessCanonicalLaneLean
end HautevilleHouse