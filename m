Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC0E7E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647193885;
	h=To:Subject:From:Message-Id:Date;
	bh=Kkl3Rzv+5A/DGUMhtA0owDLV5ByNEKtOumUURkq0v9k=;
	b=bZIdhZSY9+Sbd9pkFZYuq4aELlYYQwq2JwMoDG0HhxPq7/OCULqSTJ/SeT8bPgJL
	JQykq9hCT5rany0W/7KuFbOF76eWbrtyUz/GjH4tygH88v8r4WTDsN8zB6aTAGFmhlJ
	cDFv3cqlqdqKIfMOkOcm/LAqge5MUFHuUHdJt/0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647193885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kkl3Rzv+5A/DGUMhtA0owDLV5ByNEKtOumUURkq0v9k=;
	b=fq+xxjSh/mEwMbttCHVl7Cu8WbO0xjxoUTQSwDc3cw+UOhaQG/bxp/h+Uv/EaQzx
	nFrMGaPdkdVwIY+/2wGh6u4UCD6l2zzotR/DzMewlxW7LYxvN5NhV9Mnq+fk2EfyBT9
	ALAXOOhwDK+IXXQ4qywpnv48HMY1CCUzPAJGBU5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8468086f-6fe9e516-3c77-4872-8a77-cca6a8df3b85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0f9062828bf875ba2802e854837b27ae546733eeb71e93af5ca8bdddc64d630
Date: Sun, 13 Mar 2022 17:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647193884
