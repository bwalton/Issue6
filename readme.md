Offending code is in the AppDelegate via the pod XLForms:

`section = XLFormSectionDescriptor.formSectionWithTitle("Test Section")`
`section.hidden = false`

It crashes when setting `hidden` to really anything with the same issue:
```
2019-09-19 17:18:55.318 Issue5[24713:3518447] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[__NSCFBoolean compare:]: nil argument'
*** First throw call stack:
(
  0   CoreFoundation                      0x0000000101529bde __exceptionPreprocess + 350
  1   libobjc.A.dylib                     0x00000001002f3b20 objc_exception_throw + 48
  2   CoreFoundation                      0x00000001015bbf71 _CFThrowFormattedException + 194
  3   CoreFoundation                      0x00000001015bc389 -[__NSCFBoolean compare:].cold.1 + 41
  4   CoreFoundation                      0x000000010145f8a5 -[__NSCFBoolean compare:] + 485
  5   CoreFoundation                      0x000000010145f0d6 -[__NSCFBoolean isEqualToNumber:] + 22
  6   Issue5                              0x0000000100018a3d -[XLFormSectionDescriptor setHidePredicateCache:] + 71
  7   Issue5                              0x0000000100018c00 -[XLFormSectionDescriptor evaluateIsHidden] + 302
  8   Issue5                              0x0000000100019001 -[XLFormSectionDescriptor setHidden:] + 313
  9   Issue5                              0x0000000100030d5c __unnamed_73 + 92
  10  Issue5                              0x000000010002dc24 vm_dispatch + 1380
  11  Issue5                              0x00000001000301ae rb_scope__application:didFinishLaunchingWithOptions:__ + 1710
  12  Issue5                              0x000000010003020d __unnamed_5 + 61
```
etc etc

XLFormSectionDescriptor code is at:
`vendor/Pods/XLForm/XLForm/XL/Descriptors/XLFormSectionDescriptor.m`

I used the `hidden` feature tons in 6.2 so I'm surprised it's all of a sudden an issue.