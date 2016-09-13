/*
  Class:               AppController
  Inherits from:       NSObject
  Class descritopn:    NSApplication delegate

  Copyright (C) 2016 Sergii Stoian

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/

#import "AppController.h"
#import <NXAppKit/NXNumericField.h>

@implementation AppController : NSObject

- (void)awakeFromNib
{
  [[floatTextField formatter] setMinimumIntegerDigits:1];
  [[floatTextField formatter] setMinimumFractionDigits:2];
  [floatTextField setStringValue:@"0.0"];
  [floatTextField setMinimumValue:-100.0];
}

//----------------------------------------------------------------------------
#pragma mark | Actions
//----------------------------------------------------------------------------

- (void)showTextFieldsDemo:(id)sender
{
  [textFieldsWindow makeKeyAndOrderFront:self];
}

@end