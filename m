Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155FA3D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 22:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655763359;
	h=To:Subject:From:Message-Id:Date;
	bh=IvFaXuditqwUDAMsSS3w1secpnqCv2uTjuCqWr4ne7M=;
	b=ezvrs1BmUUtwicpF9XY5YWU2PLIIXjjUhL57nAb+v4EG02bKyoUxLAgWbsQr3KKI
	7hazKSVmbun0tbcvUB64vqbWnDnl5N9P/ltjOmSw6BlsqalcdJBMVFXFyL2+08fA0jS
	2drkD8aetlNAwECSPQLC5BJoBmMcWquf9J4J82uE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655763359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IvFaXuditqwUDAMsSS3w1secpnqCv2uTjuCqWr4ne7M=;
	b=TrxV7IRHNmOmPDvnNGY9BZFUSTDP4o3mlcba7KlIDHms/SbkV44mydh/sinpUuDm
	FqUJCSi4UPRHOtr2o5UHYXv5/TUJo7YXr0O7qkGnRPpsvY6y0F0XhzRxzGCLxLyHaUo
	3Vl0mYfZcDN98mmsxHaENQmcqiwbUVSIIssaY/l8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181832fd662-eacd4cb2-019a-4dba-949b-42344dbcb07d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67fb34b8e3e26fd7aee8eec97f0987463e92e77ceccae560ecd017bb4a9f9928
Date: Mon, 20 Jun 2022 22:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655763359
