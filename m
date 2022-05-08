Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C12F7F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652004958;
	h=To:Subject:From:Message-Id:Date;
	bh=vsYsmyDY4Ejv1vtA9i8bxe/upasYNnQz3HSy7SDQwgI=;
	b=lWCFxAP3YmLrD/kWPYNrfU1AIHPYhI4qpTxcHuJQcQVStDDUyMqUM/uJ6UQLmXpO
	VqeRuwRlfq3T+2iyIQ3OTxFqV3YN/eMdDb+UtGaIOUGBtLlkrDEAAsj3QLxKb5lxUbF
	hvWKcTLc/smAOgLlbnqh52iOF98dOVYiT/ewfamM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652004958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vsYsmyDY4Ejv1vtA9i8bxe/upasYNnQz3HSy7SDQwgI=;
	b=Iut1smp0Xm/kqPO8YBK/z93TMEEN2LF1gm9hTxjf+P2zCCgrOiAc/5I/ATFUlW4R
	rWLUH6VKmrX5nr1X3tj5qAsNXv0Cg+6/o59pFA2BEXy7vRSB6+fIpc68jwcWEdHXJhH
	/HfRAo+EjGEpW7YIZT4UTcX4NaPwnGtk4LwCU5OU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a32b3091-cdfa7f73-25e0-4ede-b0c7-5bff5136efd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1472ed9ba1e53d9cc80a6941a479e2aa41f8f58e0cb01484a583d14dae57817b
Date: Sun, 8 May 2022 10:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652004958
