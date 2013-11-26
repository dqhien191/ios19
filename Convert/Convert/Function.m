//
//  Function.m
//  Convert
//
//  Created by mh on 11/5/13.
//  Copyright (c) 2013 techmaster. All rights reserved.
//

#import "Function.h"

@implementation Function
-(float)KmtoMile: (float) number{
    return number/1.6;
}
-(float)MiletoKm: (float) number{
    return number*1.6;
}
-(float)CelciustoFara: (float) number{
    return number*1.8 + 32;
}
-(float)FaratoCelcius: (float) number{
    return (number-32)/1.8;
}
@end
