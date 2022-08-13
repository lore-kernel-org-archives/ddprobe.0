Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBB47E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660375852;
	h=To:Subject:From:Message-Id:Date;
	bh=v6L5/lS+NwaLko9ld3haqzb/Djkn3Eht/lnompkHW28=;
	b=BJF9ygGxrsGlRtPBThc35YaTxEzG9tjVD/R1l6/gg7KZMmA4RFri2NxBVSvlbbjw
	uf92daMNTFJZ9mEXRljUgC+gvRcrxlOz8ex8WpQiQWqp3v+P6SnMDaQ+6bUsKsa4BoS
	ZH1GbEZL46zniqCQ9E/yaN5lmCTLMg9p9II29HVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660375852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v6L5/lS+NwaLko9ld3haqzb/Djkn3Eht/lnompkHW28=;
	b=G7Z9Z+45uGj7qxkIUWQTuL8h5Da28iKJgqMei4SucRocJQmOEV1b73ecgcaxLjt4
	nfCnrfAraWwl1r8fN/5oZ1Q8rzar7DYyhBfGx9NgO1X0ZEg9OQXVyaVl7/KlEzHVL5j
	4ioNg2DFMg7EtomQeTfloPtjMY/oOPpMs82o2ps8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182961ce5ed-3cb33f14-7c02-414b-866b-9a7bb5250753-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6372a22e67199638e00e57fffd010b0007946aa923d584306dcb68677a04de2f
Date: Sat, 13 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660375852
