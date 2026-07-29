import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure DensityOperator where
  carrierSpace : Type u
  probabilityMeasure : carrierSpace → ℝ
  positivity : ∀ x, probabilityMeasure x ≥ 0
  normalization : ∫ x, probabilityMeasure x = 1
  admissibility : AdmissibleClass

structure DensityOperatorEvidence (D : DensityOperator) where
  positivityClosed : D.positivity
  normalizationClosed : D.normalization

def DensityOperatorClosed (D : DensityOperator) : Prop :=
  D.positivity ∧ D.normalization

theorem density_operator_closed_from_evidence (D : DensityOperator)
    (E : DensityOperatorEvidence D) : DensityOperatorClosed D := by
  exact And.intro E.positivityClosed E.normalizationClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse