Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1017A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659989452;
	h=To:Subject:From:Message-Id:Date;
	bh=pseCzmY8CsGf4ompB7cM+SWpBVNvUuNqiyOcvbCuDtE=;
	b=E8s8RFSC/FySXDWiMiuBKV+mGuRaTE6o3RBvXOz9BxvAR/K1juoGxPz9pnhPraoa
	ShDC6qZV/j66X+M327J4JMFm2binF4td+zStNB/49pqcOOLPmmszeegp4hyhPQDSZVm
	sReXSz93eS8cdcgSmxnH+9h8TElsO8eMxWY1v2QY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659989452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pseCzmY8CsGf4ompB7cM+SWpBVNvUuNqiyOcvbCuDtE=;
	b=hQ7tTSVN6qzU1JTn2ZZpIDS0ut9Q7SZaAFsB85AOLFgRd5NDM6W8p0jkE33xxpRU
	MfgeBuZfRJM46oFrvF/0uyDsY5R+AsaEZzonhbCI7mASQKMxyq0mF8dOU2LRUySaqMe
	4fAcs5ulcTpUDGr+xKP5R0pl9qwe6LCHT+XX+9Xg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f14e700-8a2bc4a3-e4ff-4074-a184-fe4fff369548-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a6306c9549bdf1f255771511e1afa5d2982574ce4d3c55676f5162744e48827
Date: Mon, 8 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659989452
