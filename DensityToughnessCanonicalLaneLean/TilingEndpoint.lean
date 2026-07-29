import DensityToughnessCanonicalLaneLean.MultiScaleAnalysis

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure TilingEndpointPackage {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage} {M : MultiScaleAnalysisPackage} where
  targetSpace : Type u
  targetTopology : TopologicalSpace targetSpace
  tilingDecidable : Prop
  endpointMatching : Prop
  tilingConstructionEnd : Prop

structure TilingEndpointEvidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage} {M : MultiScaleAnalysisPackage}
    (T : TilingEndpointPackage) where
  tilingDecidableClosed : T.tilingDecidable
  endpointMatchingClosed : T.endpointMatching
  tilingConstructionEndClosed : T.tilingConstructionEnd

def TilingEndpointClosed {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage} {M : MultiScaleAnalysisPackage}
    (T : TilingEndpointPackage) : Prop :=
  T.tilingDecidable ∧ T.endpointMatching ∧ T.tilingConstructionEnd

theorem tiling_endpoint_closed_from_evidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    {F : FragmentationPackage} {C : CriticalScalingPackage} {M : MultiScaleAnalysisPackage}
    (T : TilingEndpointPackage) (Ev : TilingEndpointEvidence T) :
    TilingEndpointClosed T := by
  exact And.intro Ev.tilingDecidableClosed (And.intro Ev.endpointMatchingClosed Ev.tilingConstructionEndClosed)

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
