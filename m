Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3B8A32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 05:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655788739;
	h=To:Subject:From:Message-Id:Date;
	bh=DeSPcStdOMMWLoW6g00XgH7YWJ0Wr2pw0y6Y+DL9Ai0=;
	b=MX3RdxUG2BaBpGo8HwQUM7wcaiwsOMwZ6J95Wy0eTer77NFhzTXxVjxTJWbiuctB
	vNoIOa2zWawplTXV1Y/EQZPum5Sa1oPWDOJpE20mytcqr3PUwgldlObJd5/CcfUNrAp
	Mzee5FYRfNHphQrYRf0GU5VXVvnHnkwVs2XO8G6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655788739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DeSPcStdOMMWLoW6g00XgH7YWJ0Wr2pw0y6Y+DL9Ai0=;
	b=kUdTteIUMteQXeDbfq8FaSxfCDHrf8VLDVOcbrlZKdF2qAreklu2gzrim4Uz1wIP
	jl09PgDFUYvlX6aBOwhBT917fBsSDb6kNi34GEPnT1+/MNstAQGXGc5LqAROS5Vb1eJ
	TNpxCKBiEEL2dvyB0mcuROQrPoDBgJ4sjBtb3jOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184b31a87-47c8203a-b529-43c7-a583-8b99a83baf75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f2ca5d02e368c13c3db1d4295d0ef97e20df9970bb33be5342d04a8c0ae5df5
Date: Tue, 21 Jun 2022 05:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655788739
