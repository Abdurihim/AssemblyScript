(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (export "add" (func $assembly/index/add))
 (export "fib" (func $assembly/index/fib))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/fib (param $0 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
  local.get $0
  i32.const 1
  i32.eq
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 1
   i32.sub
   call $assembly/index/fib
   local.get $0
   i32.const 2
   i32.sub
   call $assembly/index/fib
   i32.add
  end
 )
)
