import DensityToughnessCanonicalLaneLean.Fragmentation

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure CriticalScalingPackage {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} where
  criticalExponent : ℝ
  scalingLaw : Prop
  scalingLawTerm : scalingLaw
  optimalityCondition : Prop
  optimalityConditionTerm : optimalityCondition
  criticalityEvidence : Prop
  criticalityEvidenceTerm : criticalityEvidence

structure CriticalScalingEvidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} (C : CriticalScalingPackage) where
  scalingLawClosed : C.scalingLaw
  optimalityConditionClosed : C.optimalityCondition
  criticalityEvidenceClosed : C.criticalityEvidence

def CriticalScalingClosed {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} (C : CriticalScalingPackage) : Prop :=
  C.scalingLaw ∧ C.optimalityCondition ∧ C.criticalityEvidence

theorem critical_scaling_closed_from_evidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} (C : CriticalScalingPackage) (Ev : CriticalScalingEvidence C) :
    CriticalScalingClosed C := by
  exact And.intro Ev.scalingLawClosed (And.intro Ev.optimalityConditionClosed Ev.criticalityEvidenceClosed)

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
