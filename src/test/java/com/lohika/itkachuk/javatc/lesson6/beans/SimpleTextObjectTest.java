package com.lohika.itkachuk.javatc.lesson6.beans;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created with IntelliJ IDEA.
 * User: itkachuk
 * Date: 3/22/13 5:39 PM
 */
public class SimpleTextObjectTest {

    public static final String TEST_STRING = "The char sequence for testing";

    @Test
    public void toStringTest(){
        TextObject textObject = new TextObject(TEST_STRING);
        Assert.assertTrue(TEST_STRING.equals(textObject.toString()));
    }

    @Test
    public void equalsTest(){
        TextObject textObject1 = new TextObject(TEST_STRING);
        TextObject textObject2 = new TextObject(TEST_STRING);
        TextObject textObject3 = new TextObject("Other char sequence");

        Assert.assertTrue(textObject1.equals(textObject2));
        Assert.assertFalse(textObject1.equals(textObject3));
    }
}
