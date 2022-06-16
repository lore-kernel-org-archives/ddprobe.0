Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A2F6AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655421479;
	h=To:Subject:From:Message-Id:Date;
	bh=RQOEDRyEuiJRGrIUPKWweo7AXceQQ+GaMS2CIfsIPVw=;
	b=azWg0Uha1M8ltPNfxeZh0mSY0CysFNPpLv3ANWT883HWu/9x4oeC6eC0FO/cl9zG
	knFilrfbNJ+jhBGriYF8h7oeXHoDcwsMj677FOTJcr1X4yXO8uhC/A3q5vryXlJA0dZ
	Ujutm5iRAG3vH4Tj1MWi892vTE/eiajD/GrBq474=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655421479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQOEDRyEuiJRGrIUPKWweo7AXceQQ+GaMS2CIfsIPVw=;
	b=PyKFb8UIRAzaQ0H/HckjApMFQwk3JFJdJV5hdFU5HfCcrYQyDVs7wfaCNUgVHv/m
	rcXoZzeOZNWbCp+MUbHADKxR0c678XVX6QY4eUFqYZT11th5WqY/2tYtQv3Rl9GkXWY
	FQBAdpGtTlZj8BWCNn+ovP2ff1l5bJuJmLIotD3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816ecf2985-86f658b3-35d2-40c9-a152-662d0a26e261-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39a1f015393caffcb1c88318e1f1cc3978d3bce07ebda8a0bd2c27df6e430cd4
Date: Thu, 16 Jun 2022 23:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655421479
