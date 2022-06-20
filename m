Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40792562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 16:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655741700;
	h=To:Subject:From:Message-Id:Date;
	bh=AVy2BwFEQrxFtCoYQCAlshPrM/10koE0yNJPeiwZNa4=;
	b=KmpbS7aY8ASqsr9PifA7v1brb+DT3p4Q7vL0458cPpNmmfnsDspFCATr8uVklxR3
	FPVW1fmQ0dC69mMEv3GH9y4EOWKmH/D3cZIZZcyp/OWxzx/5RRxDvK0ITDf8qE+alMr
	xBwwSltygZ/bPOpm1hqQPWzbR6rW9kBKbT7WGPF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655741700;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AVy2BwFEQrxFtCoYQCAlshPrM/10koE0yNJPeiwZNa4=;
	b=T+A5OQffzSMl/TuWbmDPPD9UeMt5L+crlFPmdRB2uj2L5OJ2nnV6y2In3FS0gpz9
	lEHY/NSR6ZZqM1erExPN+mCM7UWSPo6juXtQmirGH6KQNvHUcQ0xJpa7wAler2Wlpng
	dqwIbR71KtiWXp98IzINAqd9nxvIY96s6BZ+3y4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181e55494-1e9f1f0d-f8c1-4711-b813-0af37f07b9e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 544bf923df0d15fb2407f740096ac4b49e12b0082836c304d7cca9bcad48669f
Date: Mon, 20 Jun 2022 16:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655741699
