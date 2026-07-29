import DensityToughnessCanonicalLaneLean.CriticalScaling

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure MultiScaleAnalysisPackage {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage} where
  scaleDecomposition : Prop
  uniformEstimates : Prop
  scaleBridging : Prop
  allScalesCovered : Prop
  convergenceGuarantee : Prop

structure MultiScaleAnalysisEvidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage}
    (M : MultiScaleAnalysisPackage) where
  scaleDecompositionClosed : M.scaleDecomposition
  uniformEstimatesClosed : M.uniformEstimates
  scaleBridgingClosed : M.scaleBridging
  allScalesCoveredClosed : M.allScalesCovered
  convergenceGuaranteeClosed : M.convergenceGuarantee

def MultiScaleAnalysisClosed {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage}
    (M : MultiScaleAnalysisPackage) : Prop :=
  M.scaleDecomposition ∧ M.uniformEstimates ∧
  M.scaleBridging ∧ M.allScalesCovered ∧ M.convergenceGuarantee

theorem multi_scale_analysis_closed_from_evidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage}
    (M : MultiScaleAnalysisPackage) (Ev : MultiScaleAnalysisEvidence M) :
    MultiScaleAnalysisClosed M := by
  exact And.intro Ev.scaleDecompositionClosed
    (And.intro Ev.uniformEstimatesClosed
      (And.intro Ev.scaleBridgingClosed
        (And.intro Ev.allScalesCoveredClosed Ev.convergenceGuaranteeClosed)))

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
