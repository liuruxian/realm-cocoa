////////////////////////////////////////////////////////////////////////////
//
// Copyright 2014 Realm Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

#import "SwatchColor.h"

@interface SwatchColor ()

@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, strong, readwrite) NSColor *color;

@end

@implementation SwatchColor

- (instancetype)initWithName:(NSString *)name color:(NSColor *)color
{
    if (self = [super init]) {
        _name = name;
        _color = color;
    }
    
    return self;
}

+ (instancetype)swatchColorForName:(NSString *)name
{
    if ([name isEqualToString:@"Black"]) {
        return [SwatchColor blackSwatchColor];
    }
    else if ([name isEqualToString:@"Gray"]) {
        return [SwatchColor graySwatchColor];
    }
    else if ([name isEqualToString:@"Red"]) {
        return [SwatchColor redSwatchColor];
    }
    else if ([name isEqualToString:@"Blue"]) {
        return [SwatchColor blueSwatchColor];
    }
    else if ([name isEqualToString:@"Green"]) {
        return [SwatchColor greenSwatchColor];
    }
    else if ([name isEqualToString:@"LightGreen"]) {
        return [SwatchColor lightGreenSwatchColor];
    }
    else if ([name isEqualToString:@"LightBlue"]) {
        return [SwatchColor lightBlueSwatchColor];
    }
    else if ([name isEqualToString:@"Brown"]) {
        return [SwatchColor brownSwatchColor];
    }
    else if ([name isEqualToString:@"Orange"]) {
        return [SwatchColor orangeSwatchColor];
    }
    else if ([name isEqualToString:@"Yellow"]) {
        return [SwatchColor yellowSwatchColor];
    }
    
    return nil;
}

+ (NSArray *)allSwatchColors
{
    return @[[SwatchColor blackSwatchColor],
             [SwatchColor graySwatchColor],
             [SwatchColor redSwatchColor],
             [SwatchColor blueSwatchColor],
             [SwatchColor greenSwatchColor],
             [SwatchColor lightGreenSwatchColor],
             [SwatchColor lightBlueSwatchColor],
             [SwatchColor brownSwatchColor],
             [SwatchColor orangeSwatchColor],
             [SwatchColor yellowSwatchColor]];
}

+ (instancetype)blackSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Black" color:[NSColor blackColor]];
}

+ (instancetype)graySwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Gray" color:[NSColor grayColor]];
}

+ (instancetype)redSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Red" color:[NSColor redColor]];
}

+ (instancetype)blueSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Blue" color:[NSColor blueColor]];
}

+ (instancetype)greenSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Green" color:[NSColor greenColor]];
}

+ (instancetype)lightGreenSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"LightGreen" color:[NSColor colorWithRed:21.0f/255.0f green:240.0f/255.0f blue:11.0f/255.0f alpha:1.0f]];
}

+ (instancetype)lightBlueSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"LightBlue" color:[NSColor colorWithRed:0.0f green:169.0f/255.0f blue:217.0f alpha:1.0f]];
}

+ (instancetype)brownSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Brown" color:[NSColor brownColor]];
}

+ (instancetype)orangeSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Orange" color:[NSColor orangeColor]];
}

+ (instancetype)yellowSwatchColor
{
    return [[SwatchColor alloc] initWithName:@"Yellow" color:[NSColor yellowColor]];
}

@end
