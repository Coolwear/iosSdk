//
//  CE_SyncClearCounterCmd.h
//  CLBluetoothModule
//
//  Created by coolwear0808 on 30/01/2026.
//

#import <BluetoothLibrary/CE_Cmd.h>

NS_ASSUME_NONNULL_BEGIN

/// incomming call clear Counter command
@interface CE_SyncClearCounterCmd : CE_Cmd

@property (nonatomic, assign) Byte clearFlag; //   // 清除标志 1 清除


/// initialize incomming call reminder command
/// @param clearFlag Switch status. 0: close, 1: open.
- (instancetype)initWithOnoff:(NSInteger)clearFlag;

@end

NS_ASSUME_NONNULL_END
