Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5907C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 05:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655271539;
	h=To:Subject:From:Message-Id:Date;
	bh=xNac1p3vqo6FleObv68sAMD0lNpd5aixiYV4mcPo/LM=;
	b=VRhRyFy3xkiqEEWJqumHLF4vh5p3/aY0kz/PlaGMpc600lLGerIoJeKlGgBMrNp0
	iUBKGq+FfNLvL66C/G+yPfIw2R9avbx/N3FYKRIAbcOUDhy2h7qCfoS0TSbFyTdGff9
	2WZKLfzxQKAcBhfqCRPWpUpTCo5Wtrqj9ju7LiiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655271539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xNac1p3vqo6FleObv68sAMD0lNpd5aixiYV4mcPo/LM=;
	b=WKmiEVk3u4lk79ib3Xj+P+5mBjPH6EJbC8NRlHhUxIb7+zwm8ULGyFHK2EJIAtED
	bx0NLoeKB4/rGy4X0CcR0GHeCyhrxWIR9Jvw5PJKUqq2I9lmzoXQW2S6PBdtpND4Zoj
	jnSuOHCdCOxTTRcuevVeheFgdsBeHf7EAiW84o28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165df420f-7470c8b7-5fe2-41a1-994b-657b8253b7bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98d3ccd895af136a3f2d7178af6b0a4bed3d6f619fdb164ec810a36b5262eb7a
Date: Wed, 15 Jun 2022 05:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655271539
