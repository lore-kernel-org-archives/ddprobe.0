Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F5F7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657451212;
	h=To:Subject:From:Message-Id:Date;
	bh=1w+0i2iUuKVHajr5efSiK9+L3yPYR3g+5FrClsIAnVg=;
	b=cVpoRch7OCfxaXMYy1ro92EV0nD4AOuBfqii6lBJLi5VDYH5qCNAPAqL2QgV3zdx
	FQwK1MJdbGxbviiUBI+2TiSNfsamQNX5YnniYTKKWz1em6iHt9oiQngt3i+o6PcSfJr
	WpPTAmYRkwNPQACVMYefgmyPlycCK4sQw43AQ160=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657451212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1w+0i2iUuKVHajr5efSiK9+L3yPYR3g+5FrClsIAnVg=;
	b=bPuf9M2Ed8ooqNgDAEvgSOSrlhlHdRu8mhmVVV2jHd/Eh83pLePmCLOu0QxpqVc9
	YTzRdkfuwUVw4CL5lBwOJSIwreDYMJXKXPFVCFC3lADbNTk0/Jok3Nx2d5wuBs5piMu
	7N2OREY5kKXYdmUOjUo7GCGn2l+ocPwk7z9DQLyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7ca6e4a-912d7469-ea59-46a5-adcd-ae606678a24b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90f3bc8525d619eeb9a6532f15fcb7261fff642d9971c8da395ede13c5f4fec6
Date: Sun, 10 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657451212
