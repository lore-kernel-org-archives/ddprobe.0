Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F902C9E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661015453;
	h=To:Subject:From:Message-Id:Date;
	bh=6xnlZR0LFrIFEDN6rH/wi7kR3pVm55pbNqtsp+EkZp8=;
	b=GOtsqOXmoZbYR/rl2JNmOKmLo8K1tIMajb9YKt1i73qf2IHIyCtL9SX/+WcMTK5u
	y4+COYGmf3s7wsxA/U1eL5DUMSzdVbeiXO6L5wDX3UmJfF5vM5+bPeMsKf3xhHp0W98
	pKj9f7a8iRtFbtH8sg7FFOjpfvPgvemIjhuSJBeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661015453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6xnlZR0LFrIFEDN6rH/wi7kR3pVm55pbNqtsp+EkZp8=;
	b=TVndcXYFqjPDLNf6inYhBiHwp4GgUzZFg8EeBnMGgjG5pIAiQA2WOA7n/M/gKvH2
	1K4kM6sl1uERyFy0Ttq6ksRAvSsDq824+/kVbB5PZ51uymP14ab8cCQJP1KsENXIjz5
	IZLD/uZRx9pKZ0TOOtCVIV2PBNNi7w3A+Ro5aljI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc3c6b96-20c1dd45-5f83-4563-8361-c3596f1011d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaa7f76e6dae127aada0b7ec26e46a48c29ea9e0b00a98538c60b6ff348c7ae0
Date: Sat, 20 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661015452
