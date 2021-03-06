// Objective-C API for talking to  Go package.
//   gobind -lang=objc -prefix=Go 
//
// File is generated by gobind. Do not edit.

#ifndef __GoUniverse_H__
#define __GoUniverse_H__

#include <Foundation/Foundation.h>
#include "GoUniverse.h"

@protocol GoUniverseerror;
@class GoUniverseerror;

@protocol GoUniverseerror
- (NSString*)error;
@end

@class GoUniverseerror;

@interface GoUniverseerror : NSObject <GoUniverseerror> {
}
@property(strong, readonly) id _ref;

- (id)initWithRef:(id)ref;
- (NSString*)error;
@end

#endif
