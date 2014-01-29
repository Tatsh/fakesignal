#define kNetworkSignalType 3

%hook SBStatusBarStateAggregator
- (_Bool)_setItem:(int)arg1 enabled:(_Bool)arg2 {
    if (arg1 == kNetworkSignalType) {
        return %orig(arg1, YES);
    }
    return %orig;
}
%end
