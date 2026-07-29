import HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean.YonedaLemma
import HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean.AdjointFunctor
import HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean.LimitsColimits

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure CategoricalSemanticsPackage where
  baseCategory : CategoryObject
  internalLanguage : Type u
  interpretation : Type v
  soundness : Prop
  completeness : Prop

structure CategoricalSemanticsEvidence (P : CategoricalSemanticsPackage) where
  soundnessClosed : P.soundness
  completenessClosed : P.completeness

def CategoricalSemanticsClosed (P : CategoricalSemanticsPackage) : Prop :=
  P.soundness ∧ P.completeness

theorem categorical_semantics_closed_from_evidence (P : CategoricalSemanticsPackage) (E : CategoricalSemanticsEvidence P) : CategoricalSemanticsClosed P := by
  exact And.intro E.soundnessClosed E.completenessClosed

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse
