// RUN: not %scale-test --begin 1 --end 3 --step 1 --select incrementScopeCounter %s
// REQUIRES: OS=macosx
// REQUIRES: asserts

typealias X = (Range<Int>, [Range<Int>])

let samples: ContiguousArray<X> = [
  (0..<1, [ 1..<1, 2..<3 ]),
%for i in range(0, N):
  (0..<1, [ 1..<1, 2..<3 ]),
%end
]
