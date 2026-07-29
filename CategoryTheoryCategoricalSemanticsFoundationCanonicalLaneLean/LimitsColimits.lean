import HautevilleHouse.CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure LimitCone (C : CategoryObject) (J : CategoryObject) where
  coneTip : C.carrier
  coneProjections : Type u
  universalProperty : Prop
  limitExists : Prop

structure ColimitCocone (C : CategoryObject) (J : CategoryObject) where
  coconeTip : C.carrier
  coconeInjections : Type u
  universalProperty : Prop
  colimitExists : Prop

structure LimitColimitEvidence (C : CategoryObject) (J : CategoryObject) (L : LimitCone C J) (Co : ColimitCocone C J) where
  limitUniversalClosed : L.universalProperty
  limitExistsClosed : L.limitExists
  colimitUniversalClosed : Co.universalProperty
  colimitExistsClosed : Co.colimitExists

def LimitsColimitsClosed (C : CategoryObject) (J : CategoryObject) (L : LimitCone C J) (Co : ColimitCocone C J) : Prop :=
  L.universalProperty ∧ L.limitExists ∧ Co.universalProperty ∧ Co.colimitExists

theorem limits_colimits_closed_from_evidence (C : CategoryObject) (J : CategoryObject) (L : LimitCone C J) (Co : ColimitCocone C J) (E : LimitColimitEvidence C J L Co) : LimitsColimitsClosed C J L Co := by
  exact And.intro E.limitUniversalClosed (And.intro E.limitExistsClosed (And.intro E.colimitUniversalClosed E.colimitExistsClosed))

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse
