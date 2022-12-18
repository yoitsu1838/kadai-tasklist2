package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Task;

public class TaskValidator {
    // バリデーションを実行する
    public static List<String> validate(Task m) {
        List<String> errors = new ArrayList<String>();

        String task_error = validateContent(m.getContent());
        if(!task_error.equals("")) {
            errors.add(task_error);
        }


        return errors;
    }


    // タスクの必須入力チェック
    private static String validateContent(String content) {
        if(content == null || content.equals("")) {
            return "登録するタスクが不明です。入力してください。";
        }

        return "";
    }
}
