Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD5B1386
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 12:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655900459;
	h=To:Subject:From:Message-Id:Date;
	bh=KZcLkj4ugL2XtoBQtJrkfIpOW0aur7XvpMPTXvQgras=;
	b=BbrS68AxRm7Uarfg6pWWpg8kG+H2cJfKj9mZj/ZAdWLpz9esQadPoBneYWxC4qP0
	EcvNScUIm7ABMlHUXH9A+kuMqMGI0Pw6yPGNB14/9atm6HpiZLVGXbmdqasCOJvad7i
	cHLaiUdSHNfOGN9pfcpDG5swrcBDBKXycsLFt5vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655900459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KZcLkj4ugL2XtoBQtJrkfIpOW0aur7XvpMPTXvQgras=;
	b=jgPyfvpnGrdbdMVtoi1zFtu2Z3M5kvcCtlo+Tva1H4F26suAHzfdrP6XP942V+Lz
	L5UZcm8yijpBVcvkWTu/qMSFpWIUVeusqyV6tYICr+IO8g/i5aRzo/P+ITPbeICn73+
	n4IQSCcwsrQZCUvV32rb/KyU3LcQZSDY42DgmFEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b5bd0d0-dca32030-8d2a-4681-8b19-940bfd948743-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a447ca1001f69c7defafbc1803964b63f5f5a513b3debb1c7896ce63cf7e402
Date: Wed, 22 Jun 2022 12:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655900459
