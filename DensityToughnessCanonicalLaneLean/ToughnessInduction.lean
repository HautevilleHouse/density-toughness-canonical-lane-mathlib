import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure ToughnessInductionPackage where
  baseCase : Prop
  inductiveStep : Prop
  transitionBound : Prop
  terminationGuarantee : Prop

structure ToughnessInductionEvidence (T : ToughnessInductionPackage) where
  baseCaseClosed : T.baseCase
  inductiveStepClosed : T.inductiveStep
  transitionBoundClosed : T.transitionBound
  terminationGuaranteeClosed : T.terminationGuarantee

def ToughnessInductionClosed (T : ToughnessInductionPackage) : Prop :=
  T.baseCase ∧ T.inductiveStep ∧ T.transitionBound ∧ T.terminationGuarantee

theorem toughness_induction_closed_from_evidence (T : ToughnessInductionPackage) (E : ToughnessInductionEvidence T) :
    ToughnessInductionClosed T := by
  exact And.intro E.baseCaseClosed (And.intro E.inductiveStepClosed (And.intro E.transitionBoundClosed E.terminationGuaranteeClosed))

end DensityToughnessCanonicalLaneLean
end HautevilleHouse