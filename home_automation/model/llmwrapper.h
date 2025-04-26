#ifndef _LLMWRAPPER_H_
#define _LLMWRAPPER_H_
#include <QObject>
//#include "llm.service/av_llm_func_call.h"

class LlmWrapper : public QObject
{
    Q_OBJECT

public:
    explicit LlmWrapper(QObject* parent = nullptr) : QObject(parent) {

    }

    Q_INVOKABLE void process_prompt(QString prompt) {
        qDebug() << "process_prompt is called with prompt:  " << prompt << Qt::endl;
        //int argc = 3;
        //const char* argv[3];
        //std::vector<std::string> v_args = { "program", "-m", "./model-437a58eed892.gguf", "-f", "func", "-p", prompt.toStdString() };
        //std::vector<std::string> v_args = {"program", "-m", "./Phi-3-mini-4k-instruct-q4.gguf", "-f", "func", "-p", prompt.toStdString() };

        //int i = 0;
        //for (auto& arg : v_args)
        //    argv[i++] = arg.c_str();


        //get_text(i, &argv[0]);
    }

private:
    // inline static QJSEngine* s_engine = nullptr;

};

#endif