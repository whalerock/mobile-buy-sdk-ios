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
// Make changes to BUYTag.m instead.

#import "_BUYTag.h"

const struct BUYTagAttributes BUYTagAttributes = {
	.title = @"title",
};

const struct BUYTagRelationships BUYTagRelationships = {
	.product = @"product",
};

@implementation _BUYTag

+ (NSString *)entityName {
	return @"Tag";
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

#if defined CORE_DATA_PERSISTENCE
@dynamic title;
#endif

#if defined CORE_DATA_PERSISTENCE
@dynamic product;
#endif

- (NSMutableSet *)productSet {
	[self willAccessValueForKey:@"product"];

	NSMutableSet *result = (NSMutableSet *)[self mutableSetValueForKey:@"product"];

	[self didAccessValueForKey:@"product"];
	return result;
}

@end

#pragma mark -

@implementation BUYModelManager (BUYTagInserting)

- (BUYTag *)insertTagWithJSONDictionary:(NSDictionary *)dictionary
{
    return (BUYTag *)[self buy_objectWithEntityName:@"Tag" JSONDictionary:dictionary];
}

- (NSArray<BUYTag *> *)insertTagsWithJSONArray:(NSArray <NSDictionary *> *)array
{
    return (NSArray<BUYTag *> *)[self buy_objectsWithEntityName:@"Tag" JSONArray:array];
}

- (NSArray<BUYTag *> *)allTagObjects
{
	return (NSArray<BUYTag *> *)[self buy_objectsWithEntityName:@"Tag" identifiers:nil];
}

- (BUYTag *)fetchTagWithIdentifierValue:(int64_t)identifier
{
    return (BUYTag *)[self buy_objectWithEntityName:@"Tag" identifier:@(identifier)];
}

@end
