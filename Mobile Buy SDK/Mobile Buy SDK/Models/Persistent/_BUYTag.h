//
//  _BUYTag.h
//  Mobile Buy SDK
//
//  Created by Shopify.
//  Copyright (c) 2015 Shopify Inc. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BUYTag.h instead.

#import "BUYManagedObject.h"

#import "BUYModelManager.h"

extern const struct BUYTagAttributes {
	__unsafe_unretained NSString *title;
} BUYTagAttributes;

extern const struct BUYTagRelationships {
	__unsafe_unretained NSString *product;
} BUYTagRelationships;

@class BUYProduct;

@class BUYTag;
@interface BUYModelManager (BUYTagInserting)
- (NSArray<BUYTag *> *)allTagObjects;
- (BUYTag *)fetchTagWithIdentifierValue:(int64_t)identifier;
- (BUYTag *)insertTagWithJSONDictionary:(NSDictionary *)dictionary;
- (NSArray<BUYTag *> *)insertTagsWithJSONArray:(NSArray <NSDictionary *> *)array;
@end

@interface _BUYTag : BUYCachedObject
+ (NSString *)entityName;

@property (nonatomic, strong) NSString* title;

@property (nonatomic, strong) NSSet *product;
- (NSMutableSet *)productSet;

@end

@interface _BUYTag (ProductCoreDataGeneratedAccessors)

@end

@interface _BUYTag (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (NSMutableSet *)primitiveProduct;
- (void)setPrimitiveProduct:(NSMutableSet *)value;

@end
