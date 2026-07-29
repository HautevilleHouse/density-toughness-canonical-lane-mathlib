import HautevilleHouse.DensityToughnessCanonicalLaneLean.DensityOperator
import HautevilleHouse.DensityToughnessCanonicalLaneLean.ToughnessFunction

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure AdmissibleClass where
  object : DensityOperator
  toughness : ToughnessFunction
  endpointSatisfied : DensityOperatorClosed object ∧ ToughnessFunctionClosed toughness
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DensityOperatorClosed A.object ∧ ToughnessFunctionClosed A.toughness

end DensityToughnessCanonicalLaneLean
end HautevilleHouse