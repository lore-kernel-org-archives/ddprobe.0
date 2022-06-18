Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDBC7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 06:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655534999;
	h=To:Subject:From:Message-Id:Date;
	bh=VOPeUdJWO99Rlm7suSotybyUF5ogYx6OmU6UMurdnSQ=;
	b=G1E+y2+IyVpE1+25xsrkkC41LOpnlXEXIe/h086hp6dFgpowls/QH2MwiviDTN9F
	RawpkxDO+swsNV4yVTAgFl3d0ejU0qq+gz2C77fCqgXu7AmPnvTnrUj0pdoAFrhMH/f
	7l6YnG6WLPZxtUaUcVTIjJ32kMLNRk8Q1BlMqhXY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655534999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VOPeUdJWO99Rlm7suSotybyUF5ogYx6OmU6UMurdnSQ=;
	b=NlDJuKJmdBOrhZK2yosgEP/BIR+YDZ6MLw1PCI6sn7xH9nvANrTBrgrLAPM05EuX
	DE2OMd+sdyK32pGIUi9Ht3ktQ+A0p/oq6lLgkc5PdxW46Nm6S2CyRfg0a4tHZQgggE0
	um9tZlehaXOk1PZEINIOxRkGCK5HQ6WPJEMgWGco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181759356c2-36bf639d-126b-4c15-ab26-69c19443df85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f70fe9e27b8fdc749769789f6da37c4836849a3c1f1dda2c1a8554b928a9b283
Date: Sat, 18 Jun 2022 06:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655534999
