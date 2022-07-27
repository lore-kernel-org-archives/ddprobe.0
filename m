Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754267E0
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658889052;
	h=To:Subject:From:Message-Id:Date;
	bh=kouaebk36SoM1927DeuLBfhhKhwZ/B8Dayw64KhyO5E=;
	b=DOvkfsFf/VeTM7jEOc0sRF0UmAvzDPIYW62mYHdILnd8fxuQoA2L/KkLM537MkCE
	uqs8NfPhlkfaN7oLaMZ1f4ssr8XRfJE7JxPTiY1pExewLYGNVOrdeTO6Asm2Y2lNDZz
	0SiVvOPx/bq913l4UYR19yGlHFTi6lUhkjnYVocc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658889052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kouaebk36SoM1927DeuLBfhhKhwZ/B8Dayw64KhyO5E=;
	b=d4AH7ZjMzbmQ8+ESrPUBz3K49+sMzLT5/GbsdF0+sVF7BAM/d71ae7M/Qqd7cuyq
	i3Sbw8Q9/w75wvK9zmOnjekJhOTXUjpWSv3Rcr2BULiSByHpQ0kb8mXwG+SIkXTh3x3
	3SIeS29UECRsj5ZJNFvEezf+FUkoxUrKArroF//Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d7e21af-38f62387-d6bc-4905-a70e-73c24ea21385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bea86c7fb34708c55b41e085d2ab374d8954a6135a3e79b6f82e8c8c08d1bd9
Date: Wed, 27 Jul 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658889052
