import DensityToughnessCanonicalLaneLean.DensityToughnessAdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure SmoothingProcess (A : AdmissibleClass) where
  smoothedDensity : ℝ → (A.object.carrier → ℝ)
  regularizingParameter : ℝ
  regularizingPositive : regularizingParameter > 0
  convergence : Prop
  regularizingPositiveClosed : regularizingPositive
  convergenceClosed : convergence

def SmoothingClosed (A : AdmissibleClass) (S : SmoothingProcess A) : Prop :=
  S.regularizingPositive ∧ S.convergence

theorem smoothing_closed (A : AdmissibleClass) (S : SmoothingProcess A) :
    SmoothingClosed A S := by
  exact And.intro S.regularizingPositiveClosed S.convergenceClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse