Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA5257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661003452;
	h=To:Subject:From:Message-Id:Date;
	bh=gzjGT5/SGecLaIl9Foh4tb2EMpPu596mpzHNFdrKOjo=;
	b=XszQWC4zSc0CHg2Yl+Cktv+qcp3u+wT6LAk9pxm27qykncXyKx15XiIRdFmYX5nZ
	CFywblAusH0N3i1VmJcXp8OQw77LxiiMpnL1JyM7bICxPUefe++inQEZ0a/GdWIDFM/
	xPiNNuK45HYICv/zSgrxj/DAw/h7PidsB5Wf5mjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661003452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gzjGT5/SGecLaIl9Foh4tb2EMpPu596mpzHNFdrKOjo=;
	b=icTgVyus409y2S89unxbXEWyi7QWgVUOIOhAYWDfURJfM0vC1Fzc93m7xvRXGLjA
	gVsFL165rGReoqfdAcEWbSlctb6IOl7iQ2IWDy+XsyyIOKG78X3HCdhXAG3F/rMQxNh
	UVSeFIehTJJHBwuM0e2vs8lxBRYWKO43UaAN9gFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb8550ba-f7404235-233c-4577-af63-844ae658c48d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d7458a20f9fac3941ddd40dedb7b239e874a7ef176eaf90ff8df4f980125517
Date: Sat, 20 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661003452
