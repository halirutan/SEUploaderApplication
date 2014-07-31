package de.halirutan.uploader;

import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;

import static java.awt.Toolkit.getDefaultToolkit;

/**
 * @author patrick (7/31/14)
 */
@SuppressWarnings("UnusedDeclaration")
public class ClipboardCopy {
  public static void copy(final String toCopy) {
    StringSelection stringSelection = new StringSelection(toCopy);
    Clipboard systemClipboard = getDefaultToolkit().getSystemClipboard();
    systemClipboard.setContents(stringSelection, null);
  }
}
