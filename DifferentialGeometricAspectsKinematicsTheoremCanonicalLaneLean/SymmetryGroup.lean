import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure SymmetryGroup where
  group : Type u
  action : Type v
  orbitTypes : Prop
  isotropySubgroupsClassified : Prop
  symmetryReductionClosed : Prop

def SymmetryGroupClosed (S : SymmetryGroup) : Prop :=
  S.orbitTypes ∧
  S.isotropySubgroupsClassified ∧
  S.symmetryReductionClosed

theorem symmetry_group_closed_iff (S : SymmetryGroup) :
    SymmetryGroupClosed S ↔ (S.orbitTypes ∧ S.isotropySubgroupsClassified ∧ S.symmetryReductionClosed) :=
  by rfl

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
