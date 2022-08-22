Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA8664D
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661144452;
	h=To:Subject:From:Message-Id:Date;
	bh=orJduRG44qftyfyohhe3Ip/ZejSm22/wq1IqCqHoTgI=;
	b=ROAh7nS9t3f13b/F8kQUvohHUMWArScyLNkE/icxKgQMNLRbIQ/S9sm/2/VkH/6W
	TtoOhJ54SWklIWIeB/GMIDxW1zQcq2uxW5cGKU7KvVO3/PcvNLjLHUsoofjitqzsSCN
	9aa8L3uxJE7A2y17jaTmgoIYjBjeIPnW6cj93xsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661144452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=orJduRG44qftyfyohhe3Ip/ZejSm22/wq1IqCqHoTgI=;
	b=WTWnKVCG7F3Y1/N1Bh0B9qYR0K7C0kfFvEc8zjakJXV44mpbX7c4mJMA9TpUEfpj
	1GXms+PulDxSog7XqBghV37jS2p7fByTOJ+8FTr9wMOhJ4PJ4k5emOOzrInHrlRGITx
	WorHPBMR68205i4029ye9qi5h4X9Q9p+0RVOlWws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3eccd9d-546ffbde-01b3-4b44-ba89-4c2eaa59c62a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 636b9767bccd98a2f035a9f047d21237b84ac1e5dc41db78f744f46447e9062c
Date: Mon, 22 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661144452
