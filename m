Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1329515A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656901012;
	h=To:Subject:From:Message-Id:Date;
	bh=SkaGq+rgGM+9zMPQBWaGepmsfCwWC3IINreelIR8T0w=;
	b=cuqU7VQzb4FX/Ak7ul7zHsz/heR/Lpn8N9e1TxjU19jdotFgrGlU5+Uyih7PeueX
	p70BJpM2t2r/ZMBULE5WQwClWTONL+aM5EJ5HplnSaBX53BmKJIbRxnfIA0znxOYONW
	iTunrhSgK4mG9fPQJXMO+M3/bCVgjT//FoW+Sixc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656901012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkaGq+rgGM+9zMPQBWaGepmsfCwWC3IINreelIR8T0w=;
	b=QnVMloPl78Gl+pn/b4oCw3HiMM4nkkx/ytD/uCVVOvZ/NYaXLqni1S19NNGTUqqR
	C2Cs+g6PDyI1oUgTu7HkiFOJ2p9dh9W9+1xhi6ArJVufnubsWZA4gNhh8EnGkyYJt5B
	ZiOHdDVyCT5UokqAjiP9DB30ybdyKOwYrOe/lYPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6ff0b43-2f9f1c72-2056-4bd3-b161-5e3050e1cd11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e0a0779d60f8ff2ea1af9742fd6a770e9e95c45023c1b9c2875f93479c05183
Date: Mon, 4 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656901012
