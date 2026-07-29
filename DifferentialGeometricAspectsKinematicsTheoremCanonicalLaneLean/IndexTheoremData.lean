import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure IndexTheoremData (M : Type u) [TopologicalSpace M] where
  ellipticOperator : Type v
  kernelDimension : ℕ
  cokernelDimension : ℕ
  index : ℤ
  topologicalData : Type w

structure IndexTheoremDataEvidence (M : Type u) [TopologicalSpace M] (I : IndexTheoremData M) where
  kernelFiniteClosed : I.kernelDimension < ∞
  cokernelFiniteClosed : I.cokernelDimension < ∞
  indexComputedClosed : I.index = I.kernelDimension - I.cokernelDimension

def IndexTheoremDataClosed (M : Type u) [TopologicalSpace M] (I : IndexTheoremData M) : Prop :=
  I.kernelDimension < ∞ ∧ I.cokernelDimension < ∞ ∧ I.index = I.kernelDimension - I.cokernelDimension

theorem index_theorem_data_closed_from_evidence (M : Type u) [TopologicalSpace M] (I : IndexTheoremData M) (E : IndexTheoremDataEvidence M I) : IndexTheoremDataClosed M I := by
  exact And.intro E.kernelFiniteClosed (And.intro E.cokernelFiniteClosed E.indexComputedClosed)

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse