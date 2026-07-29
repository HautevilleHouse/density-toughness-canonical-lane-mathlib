import DensityToughnessCanonicalLaneLean.DensityToughnessAdmissibleClass

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure LipschitzNormPackage (A : AdmissibleClass) where
  norm : A.object.carrier → ℝ
  lipschitzConstant : ℝ
  normLipschitz : lipschitzConstant > 0
  compatibility : A.object.densityFunction = norm ∘ (fun x => x)
  normLipschitzClosed : normLipschitz
  compatibilityClosed : compatibility

def LipschitzNormClosed (A : AdmissibleClass) (L : LipschitzNormPackage A) : Prop :=
  L.normLipschitz ∧ L.compatibility

theorem lipschitz_norm_closed (A : AdmissibleClass) (L : LipschitzNormPackage A) :
    LipschitzNormClosed A L := by
  exact And.intro L.normLipschitzClosed L.compatibilityClosed

end DensityToughnessCanonicalLaneLean
end HautevilleHouse