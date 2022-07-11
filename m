Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F114411
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657556212;
	h=To:Subject:From:Message-Id:Date;
	bh=REcrmXxNh+r0Bsdt3D9RgjDMoXaacMdiq1c1ApzCbDI=;
	b=fUkvRjab1Tt148oknWgYliQ0amiDWUkrVitl7h8cC4bLxmcgDDUSBcP9f/EyAfM1
	Gil390jDi2TxGLza3bXv+wgRzWaAbNXcvVgq2s4GUO63b/nv3vXFgEloN0hxV1psiZB
	2C3bQLk/l6t8HrOH7Gz9jB7XmF2XKZm1xzJc7ZTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657556212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=REcrmXxNh+r0Bsdt3D9RgjDMoXaacMdiq1c1ApzCbDI=;
	b=GNiN6SgBk+Ky1d8XpfyVaDV+LHc+BJU5usNf7APHN7D8DnxaprqjBlY69i7ob9hB
	XiAz3nyW8bnncHPF280qQF1FaCJTrvrGH2DmSxed+yNr+BFkU5AlMm2H6nF5KArio0w
	YhZd21eMJeiJPdR4gaG1g5vLiwG45rCkE2pDgGR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee0c9a3e-cd91e30a-250a-4832-994f-b334eeb29cf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2e19796e4811e49bfdf09dc0514172cf38ebf9dbeed283ba9448e9e270b8146
Date: Mon, 11 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657556212
