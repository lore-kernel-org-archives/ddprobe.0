Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D263D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659979852;
	h=To:Subject:From:Message-Id:Date;
	bh=OkJiMeGR6NiWIW4GQ7Iz3pSULutJMmZCKV2iERLTPi8=;
	b=I+6gFIAFCuxDCuB8IVH993mMd3a/H39408Z/EtZ5yBYxSxDfKIgFabZ4v6XAIzh/
	jMMJvjQpIIqi0wwoIenPczZ4U7A/uQfD+XBfB1zyQgJ+0ub50PxXh2hy+6zao4ToBtj
	tk3j3OYgMInwprB4iPf1FxP6HAlGqxTcWsU/mqU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659979852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OkJiMeGR6NiWIW4GQ7Iz3pSULutJMmZCKV2iERLTPi8=;
	b=avJGsC8Sd/Ik6/jQP16lh0HglEGs10O0Xu0t3BxMdMowWcHdw8XtFg4EmBXymljN
	lQoaS4Yf3v3okiJr0DQwT2DIGctekF5q5lW284aCihoXieLj1mhs2pgq37bMgwXB7y4
	LwAulm5sx6d37nt/kHdYtVm9v0j0RqeViQ7AgYdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e826b8d-00f22c65-c205-4870-8213-ec16e16eb1a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8081a96764649be5c31e0e5f8d3bc1b5e877ec06f9d577932dea095dfbec4a0
Date: Mon, 8 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659979852
