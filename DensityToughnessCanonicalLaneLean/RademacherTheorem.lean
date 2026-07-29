import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DensityToughnessCanonicalLaneLean.DensityToughnessCore

namespace HautevilleHouse
namespace DensityToughnessCanonicalLaneLean

structure RademacherTheoremPackage where
  rademacherFunction : RademacherFunction ℝ
  differentiableAlmostEverywhere : Prop
  approximateDerivativeExists : Prop

structure RademacherTheoremEvidence (R : RademacherTheoremPackage) where
  differentiableAE : R.differentiableAlmostEverywhere
  approxDeriv : R.approximateDerivativeExists

def RademacherTheoremClosed (R : RademacherTheoremPackage) : Prop :=
  R.differentiableAlmostEverywhere ∧ R.approximateDerivativeExists

theorem rademacher_closed_from_evidence (R : RademacherTheoremPackage) (E : RademacherTheoremEvidence R) :
  RademacherTheoremClosed R :=
  And.intro E.differentiableAE E.approxDeriv

end DensityToughnessCanonicalLaneLean
end HautevilleHouse