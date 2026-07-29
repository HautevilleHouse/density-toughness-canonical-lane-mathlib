import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure RobustnessTransferPackage where
  sourceRobustness : Prop
  targetRobustness : Prop
  transferFunction : Prop
  continuityEstimate : ℝ

structure RobustnessTransferEvidence (R : RobustnessTransferPackage) where
  sourceRobustnessClosed : R.sourceRobustness
  targetRobustnessClosed : R.targetRobustness
  transferFunctionClosed : R.transferFunction
  continuityEstimateClosed : R.continuityEstimate > 0

def RobustnessTransferClosed (R : RobustnessTransferPackage) : Prop :=
  R.sourceRobustness ∧ R.targetRobustness ∧ R.transferFunction ∧ R.continuityEstimate > 0

theorem robustness_transfer_closed_from_evidence (R : RobustnessTransferPackage) (E : RobustnessTransferEvidence R) :
    RobustnessTransferClosed R := by
  exact And.intro E.sourceRobustnessClosed (And.intro E.targetRobustnessClosed
    (And.intro E.transferFunctionClosed E.continuityEstimateClosed))

end DensityToughnessCanonicalLaneLean
end HautevilleHouse