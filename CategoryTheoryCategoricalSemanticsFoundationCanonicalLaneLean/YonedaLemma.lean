import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure YonedaLemmaPackage where
  embeddingFullFaithful : Prop
  naturalityCondition : Prop
  bijectionOnHoms : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  embeddingFullFaithfulClosed : Y.embeddingFullFaithful
  naturalityConditionClosed : Y.naturalityCondition
  bijectionOnHomsClosed : Y.bijectionOnHoms

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.embeddingFullFaithful ∧ Y.naturalityCondition ∧ Y.bijectionOnHoms

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.embeddingFullFaithfulClosed
    (And.intro E.naturalityConditionClosed E.bijectionOnHomsClosed)

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse