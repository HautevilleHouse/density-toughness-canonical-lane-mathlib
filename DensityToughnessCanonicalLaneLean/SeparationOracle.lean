import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure SeparationOraclePackage where
  oracleFunction : Type
  inputSpace : Type
  outputSpace : Type
  consistencyCondition : Prop

structure SeparationOracleEvidence (S : SeparationOraclePackage) where
  consistencyConditionClosed : S.consistencyCondition
  oracleFunctionDefined : Nonempty S.oracleFunction

def SeparationOracleClosed (S : SeparationOraclePackage) : Prop :=
  S.consistencyCondition ∧ Nonempty S.oracleFunction

theorem separation_oracle_closed_from_evidence (S : SeparationOraclePackage) (E : SeparationOracleEvidence S) :
    SeparationOracleClosed S := by
  exact And.intro E.consistencyConditionClosed E.oracleFunctionDefined

end DensityToughnessCanonicalLaneLean
end HautevilleHouse