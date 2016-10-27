#import "charactercountfornotes9.h"
%hook ICNoteEditorViewController
- (void)viewWillAppear:(BOOL)arg1
{
    %orig;
    if(self.note.isEmpty){
        self.title = nil;
        return;
    }
    NSString *title = self.note.title;
    NSString *content = self.note.contentInfoText;
    unsigned long titleLength = (unsigned long)[title length];
    unsigned long contentLength = (unsigned long)[content length];
    self.title = [NSString stringWithFormat:@"%lu",titleLength+contentLength];
}
-(void)viewDidDisappear:(BOOL)arg1
{
    %orig;
    self.title = nil;
}
-(void)viewWillDisappear:(BOOL)arg1
{
    %orig;
    self.title = nil;
}
- (void)textViewDidChange:(UITextView *)arg1
{
    %orig;
    NSString *content = arg1.text;
    NSString *contentLength = [NSString  stringWithFormat:@"%lu", (unsigned long)[content length]];
    self.title = contentLength;
}
%end
