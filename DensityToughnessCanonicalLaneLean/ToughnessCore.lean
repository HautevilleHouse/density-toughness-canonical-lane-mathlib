import DensityToughnessCanonicalLaneLean.DensityToughnessDefs

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure ToughnessCorePackage where
  domain : DensityToughnessProblem
  coreInequality : Prop
  coreInequalityTerm : coreInequality
  scalingBound : Prop
  scalingBoundTerm : scalingBound
  fragmentationCondition : Prop
  fragmentationConditionTerm : fragmentationCondition

structure ToughnessCoreEvidence (P : ToughnessCorePackage) where
  coreInequalityClosed : P.coreInequality
  scalingBoundClosed : P.scalingBound
  fragmentationConditionClosed : P.fragmentationCondition

def ToughnessCoreClosed (P : ToughnessCorePackage) : Prop :=
  P.coreInequality ∧ P.scalingBound ∧ P.fragmentationCondition

theorem toughness_core_closed_from_evidence (P : ToughnessCorePackage) (E : ToughnessCoreEvidence P) :
    ToughnessCoreClosed P := by
  exact And.intro E.coreInequalityClosed (And.intro E.scalingBoundClosed E.fragmentationConditionClosed)

end DensityToughnessCanonicalLaneLean
end HautevilleHouse
