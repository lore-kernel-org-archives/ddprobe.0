Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027B07F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 17:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654621260;
	h=To:Subject:From:Message-Id:Date;
	bh=ifshHtYS1ikGJ6/jJevgskXOHhatzS0rj9pz0u5Ou0Q=;
	b=b1ZxkaeORHmuZWEixeU8fXoHzu9/tX2fQynJR3WJ4kMVoefaWascOadTVjc9hoIp
	LI4FqHMCcjr0P8DR7VPvSXKKwePxmXvLIEVuixeGsLqqEZPXhtyh9BFn2IVThiRPktN
	GFju535AYdkoJcIkOC3fO5R7VUPR27kXsfzUz/N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654621260;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ifshHtYS1ikGJ6/jJevgskXOHhatzS0rj9pz0u5Ou0Q=;
	b=YWxLGdHJjad/0F84nMMrmhAaM127GG/mqfto56l2f/szAx+89TfpYVVZhepwjHfW
	zZDfhWs1VD/4ohTSMT8P4zpZg3U346lJNvMR0e4L2vp3xmXwRK5w1G/TJChZXC8W8vN
	CigoXRSKt1xoJPO06OjPht/EcOQba24wJ59e08C0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f1cc5e4-a9461bb5-3acd-47ef-b50b-ed3f0a53934f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c0fc63d22e8134d4401e528a66159431841e09e66cec24c1bf13c24e4717ca7
Date: Tue, 7 Jun 2022 17:01:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654621259
