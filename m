Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D57C23D2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 11:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653737819;
	h=To:Subject:From:Message-Id:Date;
	bh=7gsD7NzL3cuD2nPjmq30pS78cS0602H2Sw7+gViDVnE=;
	b=aR23BXTVYLi1s2u/Lx+gNvx6zo2jam1Gl17h1mivAuI0CBQhb2d6vYKtPeHHex2T
	1TQMHg4uJuuEv15tdrRN8RUk6Wz7lHdczfIe1mtLG9FZGzQT9Vgv3YWT6SvkPlEa+tL
	HUGcIanEgaeEz41FLZfyrSbG+XKuHrrWq6YTv2Ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653737819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7gsD7NzL3cuD2nPjmq30pS78cS0602H2Sw7+gViDVnE=;
	b=SyEvK4UQhFuxBj2BpSAym8Srxz1gNEqOp34iR9h3t37+7oJdtvtgZVf3AWTouviA
	DYLNgydwGkSJKx2K0HBwhxYxxgBwoppGJHjIlMlRDAWlxmo9gugsLy09sFs/R9VIvsx
	ECtCrdA/nYaaqBJdfwhngYS/xSzWUA3Sq7xuW9eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a748cd6-b3304b1b-9763-453e-8c55-bff48e5da800-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b1fce6a99e511e9517ea493f58d27aa12da8dada48797b5ce7455f33f81a00d
Date: Sat, 28 May 2022 11:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653737819
