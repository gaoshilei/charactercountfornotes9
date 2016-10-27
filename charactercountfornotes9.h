@interface ICNote : NSObject
@property (nonatomic, retain) NSString *title;
- (id)contentInfoText;
- (BOOL)isEmpty;
@end
@interface ICNoteEditorViewController : UIViewController
@property(retain, nonatomic) ICNote *note;
@property(nonatomic, copy) NSString *title;
@end
