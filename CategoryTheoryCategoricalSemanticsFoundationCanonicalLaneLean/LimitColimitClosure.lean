import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

structure LimitColimitPackage where
  smallDiagram : Type u → Type u
  limitCone : Prop
  colimitCocone : Prop
  universalPropertyLimit : Prop
  universalPropertyColimit : Prop

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitConeClosed : L.limitCone
  colimitCoconeClosed : L.colimitCocone
  universalPropertyLimitClosed : L.universalPropertyLimit
  universalPropertyColimitClosed : L.universalPropertyColimit

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitCone ∧ L.colimitCocone ∧ L.universalPropertyLimit ∧ L.universalPropertyColimit

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) :
    LimitColimitClosed L := by
  exact And.intro E.limitConeClosed (And.intro E.colimitCoconeClosed (And.intro E.universalPropertyLimitClosed E.universalPropertyColimitClosed))

theorem limit_colimit_closure_implies_admitted_closure (A : AdmissibleClass) (L : LimitColimitPackage) (H : LimitColimitClosed L) :
    admittedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse