import DensityToughnessCanonicalLaneLean.DensityEstimates

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure FragmentationPackage {P : ToughnessCorePackage} {E : DensityEstimatesPackage} where
  decompositionExists : Prop
  piecewiseControl : Prop
  fragmentationToughnessRelation : Prop
  iterationTermination : Prop

structure FragmentationEvidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    (F : FragmentationPackage) where
  decompositionExistsClosed : F.decompositionExists
  piecewiseControlClosed : F.piecewiseControl
  fragmentationToughnessRelationClosed : F.fragmentationToughnessRelation
  iterationTerminationClosed : F.iterationTermination

def FragmentationClosed {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    (F : FragmentationPackage) : Prop :=
  F.decompositionExists ∧ F.piecewiseControl ∧
  F.fragmentationToughnessRelation ∧ F.iterationTermination

theorem fragmentation_closed_from_evidence {P : ToughnessCorePackage} {E : DensityEstimatesPackage}
    (F : FragmentationPackage) (Ev : FragmentationEvidence F) :
    FragmentationClosed F := by
  exact And.intro Ev.decompositionExistsClosed
    (And.intro Ev.piecewiseControlClosed
      (And.intro Ev.fragmentationToughnessRelationClosed Ev.iterationTerminationClosed))

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
