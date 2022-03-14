Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735D07469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647301584;
	h=To:Subject:From:Message-Id:Date;
	bh=TQUrSumX1mmg98KoU9jnhPnxrt25Odb9LIYOD/bRuHM=;
	b=O40Fm42s3lY9p3jADm6axQFLM/0oM24QoV9P5DrMyDPqtc6w+zS8ST/LUvkXOZ62
	v0t7+23aVr+mDTAZ2Ngl2rg+ytY796l4mtV+2Olyis/jD38uxnRRu1zOWdRqqcZeG/j
	AkyNxxwDAa2FupCYpTTcaTwqsWkAsDdxnE4rLuo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647301584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TQUrSumX1mmg98KoU9jnhPnxrt25Odb9LIYOD/bRuHM=;
	b=Zrk3Sv3IhPRJkntFqnEIfQMVAQmIyCgJz/lh7N3HbbOKspPNcMXIyQXOEFvJudv6
	cbvXhaFG5QAF8jMu28s194eTyIEPOjQUTrAyE1lnoh2eXjlGNfGqAFg60Ce+4Nhja2C
	lN2v/eBpyyEnSyRWy0XxK24g7JkLuEw6zVaRJmX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ad36750-751795e1-bcb5-4319-a1f1-1fcfa01e13a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ba3cf6cf76caa7541db2526211ed1eb069506a3e821d0fe879f138816d18085
Date: Mon, 14 Mar 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647301584
