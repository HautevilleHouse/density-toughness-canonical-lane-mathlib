import DensityToughnessCanonicalLaneLean.ToughnessCore

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure DensityEstimatesPackage {P : ToughnessCorePackage} where
  uniformDensityBound : Prop
  extremalDensity : Prop
  densityToughnessRelation : Prop
  precompactnessCondition : Prop

structure DensityEstimatesEvidence {P : ToughnessCorePackage} (E : DensityEstimatesPackage) where
  uniformDensityBoundClosed : E.uniformDensityBound
  extremalDensityClosed : E.extremalDensity
  densityToughnessRelationClosed : E.densityToughnessRelation
  precompactnessConditionClosed : E.precompactnessCondition

def DensityEstimatesClosed {P : ToughnessCorePackage} (E : DensityEstimatesPackage) : Prop :=
  E.uniformDensityBound ∧ E.extremalDensity ∧
  E.densityToughnessRelation ∧ E.precompactnessCondition

theorem density_estimates_closed_from_evidence {P : ToughnessCorePackage}
    (E : DensityEstimatesPackage) (Ev : DensityEstimatesEvidence E) :
    DensityEstimatesClosed E := by
  exact And.intro Ev.uniformDensityBoundClosed
    (And.intro Ev.extremalDensityClosed
      (And.intro Ev.densityToughnessRelationClosed Ev.precompactnessConditionClosed))

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
