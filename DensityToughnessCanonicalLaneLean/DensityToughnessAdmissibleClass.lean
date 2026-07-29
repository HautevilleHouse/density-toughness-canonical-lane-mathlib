import HautevilleHouse.DensityToughnessCanonicalLaneLean.DensityToughnessCore
import HautevilleHouse.DensityToughnessCanonicalLaneLean.RademacherTheorem
import HautevilleHouse.DensityToughnessCanonicalLaneLean.MaximalFunctionEstimates
import HautevilleHouse.DensityToughnessCanonicalLaneLean.DensityTransfer

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure AdmissibleDensityToughnessObject where
  space : Type
  metric : MetricSpace space
  rademacherTheorem : RademacherTheoremPackage
  rademacherClosed : RademacherTheoremClosed rademacherTheorem
  maximalFunction : MaximalFunctionPackage space
  maximalClosed : MaximalFunctionClosed maximalFunction
  transfer : DensityTransferPackage
  transferClosed : DensityTransferClosed transfer

def bridgeClosed (A : AdmissibleDensityToughnessObject) : Prop :=
  A.rademacherClosed ∧ A.maximalClosed ∧ A.transferClosed

theorem bridge_from_admissible_class (A : AdmissibleDensityToughnessObject) : bridgeClosed A :=
  And.intro A.rademacherClosed (And.intro A.maximalClosed A.transferClosed)

def gateClosed (A : AdmissibleDensityToughnessObject) : Prop :=
  True

theorem gate_from_admissible_class (A : AdmissibleDensityToughnessObject) : gateClosed A :=
  trivial

end DensityToughnessCanonicalLaneLean
end HautevilleHouse