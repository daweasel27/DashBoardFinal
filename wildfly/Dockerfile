FROM jboss/wildfly


COPY modules /opt/jboss/wildfly
COPY standalone /opt/jboss/wildfly
COPY wprun.sh /opt/jboss/wprun.sh
COPY deploy-DataCollector-1.0.jar /opt/jboss/deploy-DataCollector-1.0.jar


EXPOSE 9990 8080 61616

USER root
RUN rm -rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history/current/* \
    && chmod -R 777 /opt/jboss/wildfly/standalone/configuration/ \
    && chown -R jboss:jboss /opt/jboss/wildfly/ 
EXPOSE 9990 8080 61616
USER jboss
CMD ["./wprun.sh"]