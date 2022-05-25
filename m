Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A8F10E0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 14:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653490439;
	h=To:Subject:From:Message-Id:Date;
	bh=amGqvzFvj9r831cC4euAjhguv0nahTMHLzM8L2Sv/NQ=;
	b=gwDHY4vju/lwO/iSxcDVIKuFMb9gV5ROjlIO0R/fAGy6dmI3iD3tf3OskUBv3m94
	y3SHoCCC72M4nBHkL67NGSrjawnglKNQXWP7zKlJN/tHncTZrTHlDtca3un4cISQzT7
	hGK+ceapyWPkGayr7cMwBRz1UBNAAW+OPC0DAuOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653490439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=amGqvzFvj9r831cC4euAjhguv0nahTMHLzM8L2Sv/NQ=;
	b=GCY1CBmugW7stEAZlSsdJXSJJHaIH5g9n9lzbprmHqi6s6WYKGbcI/H1h1blz6fc
	+498orfqc6tX1Lv39PzUoq8GmJASozqZMqNbeodNRcigkPvcEOms+SpuUrAJorbeZjg
	jOtpuJ8W6Kkebt9Jdyrye/7KiEx6Y3f1lvKVHRTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fbb5d48c-c2112c5b-05b9-47e0-83a8-fc0ccf12c512-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ba596be638da7ceebb35857b2e2988cb48969b785dc16685123f17279f1b459
Date: Wed, 25 May 2022 14:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653490439
