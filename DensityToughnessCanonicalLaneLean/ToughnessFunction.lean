import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure ToughnessFunction where
  domain : Type u
  image : ℝ
  growthCondition : Prop
  integrability : Prop
  admissibility : AdmissibleClass

structure ToughnessFunctionEvidence (T : ToughnessFunction) where
  growthConditionClosed : T.growthCondition
  integrabilityClosed : T.integrability

def ToughnessFunctionClosed (T : ToughnessFunction) : Prop :=
  T.growthCondition ∧ T.integrability

theorem toughness_function_closed_from_evidence (T : ToughnessFunction)
    (E : ToughnessFunctionEvidence T) : ToughnessFunctionClosed T := by
  exact And.intro E.growthConditionClosed E.integrabilityClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse