Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7595510EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 03:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651202338;
	h=To:Subject:From:Message-Id:Date;
	bh=pasz02Nr0mH7txD+B2Ystq6t72pO7tBFOdKAFDUNI0U=;
	b=BTEV9TZSck03lSTM8GgUuogA5RX0nfGXLgHiSZ4C44Ah0VOj2pYPAegCPi3mw7MC
	AlQ4DpCYQZ3qGcRlqoRfVE4hkzLHYso0HviqIv/x8FNp8kQJsI4AOVMjbZParolthwN
	HYlEJvFaFFeokGHljgB1W3lQGAGRQYdcyXVskeDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651202338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pasz02Nr0mH7txD+B2Ystq6t72pO7tBFOdKAFDUNI0U=;
	b=ByTMWPOKWChnETzFU72LaK3uJPhU9gRo9qMRDSWwqne8y4L2anC+BEjI1HoGo3Cn
	ArhZbLIIqqw5giZuCGKmLmWKStkDHlL0z3BEqGCkmPPsod6dvcsT8oUuNfNVnvHsGDK
	MCNp2yAPpIsJb5rhtXLBjrzimTgh02pWylslmMwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073542df9-e4b21f57-86c0-4377-8611-647abe9554c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94e36af93f7699f5ddf37736ea8d15bf2959dff6d5c22df242ee461475691c03
Date: Fri, 29 Apr 2022 03:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651202338
