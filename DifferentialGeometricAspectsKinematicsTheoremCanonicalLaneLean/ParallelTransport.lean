import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean

structure ParallelTransport where
  fiber : Type u
  path : Type v
  transportMap : Type w
  linearIsomorphism : Prop
  curvatureFromHolonomy : Prop
  transportConsistent : Prop

def ParallelTransportClosed (P : ParallelTransport) : Prop :=
  P.linearIsomorphism ∧
  P.curvatureFromHolonomy ∧
  P.transportConsistent

theorem parallel_transport_closed_iff (P : ParallelTransport) :
    ParallelTransportClosed P ↔ (P.linearIsomorphism ∧ P.curvatureFromHolonomy ∧ P.transportConsistent) :=
  by rfl

end DifferentialGeometricAspectsKinematicsTheoremCanonicalLaneLean
end HautevilleHouse
