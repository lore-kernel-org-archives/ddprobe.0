Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBD01578
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644938484;
	h=To:Subject:From:Message-Id:Date;
	bh=ukfIQUMZLhD7uVinywb+1MSzPdTInogO3v9oFPkoEtQ=;
	b=Xb0EVK3RDHkLXpTvizUTD9WUW5iJzH+gbgXkhSPksv76GjB+EpXfAHX6v2x7hFp+
	2cZ/Ek0L08pC+i3CjqIXfizva1QXi02xtZqLjWSmgyEGKgEZfzQRpPSH2S/km1tX44V
	yxWmDaob1qp+OvM5Elv6JlJ/poK/DAbBzuQiL1ZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644938484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ukfIQUMZLhD7uVinywb+1MSzPdTInogO3v9oFPkoEtQ=;
	b=cc4SO7g7BTNqBkAQ4WaXHwtK13VDpVFlo8FSzzwNdQyWhyBqepZ1S4XwkMGqrBIR
	DP15NP33MTMhK3aFJyWK4mQ3fwFYPYLQ/DWkUp95ULI5Tv/AiZA6sjdlvt60n4Kbzbz
	Q7t5Rpa/ib4D+BBddld8cfk9735sUA0EwM4ncRpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efdf95c02-7f05b2d8-9fad-4618-a626-6ea80bf091d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d3e17d8d07410af8ee2fd0d6ccdae81b29efbbfebc35000c091975a98351091
Date: Tue, 15 Feb 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644938484
