Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D967F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 09:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651829038;
	h=To:Subject:From:Message-Id:Date;
	bh=SiQRw7VuBczH2SbZ1CnpTtDDqI3lcJ084uECYQdUo/A=;
	b=cSD2WIePvmb3Ok+zqzZ4DNw3D/VwtUn5RhiVPsDNUnFs5epVXOFqtcdod7v3pdsa
	QW3t5N3jtulbn2TioYDMn+Kl6fy/yrZbRx1DUneOiBZaz3HCPLa3NFCiXdxq2Gv0zKw
	pWBw+IPUdh3jaL6ySG9+Wq6mNuwOGroTNjLJ94lU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651829038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SiQRw7VuBczH2SbZ1CnpTtDDqI3lcJ084uECYQdUo/A=;
	b=Hf97q7cUKuASeMMXR+mjxRG8Sw2ftK+Dd0ly0TQw/UbQA7m2v72K8qfznnOAvfDk
	r9pAM9OBman1F7DgnOsyCoPSoYxR2EcPcziVgsSd/W5ypATL9A+uIW6/sLa94cykVC7
	qbCSiFhM2JFLgTv1pmVADmuzCb4fkAEBJQ6p3FGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098aedcdc-6accf1d3-eac0-4efc-815c-dc6360e48893-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c55e02fb9cea6fb59768e9c23e0482343adb2be19b2560aa003fd5103b0de429
Date: Fri, 6 May 2022 09:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651829038
