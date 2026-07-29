import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryCategoricalSemanticsFoundationCanonicalLaneLean
end HautevilleHouse