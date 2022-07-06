Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9682F38
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657126012;
	h=To:Subject:From:Message-Id:Date;
	bh=wBJvzGsQ9MDLEDrK+uV6KHAlQG14K323QQoms9DNEUw=;
	b=Uw1jm/qmZESOFcbDfPcBXpFqapnEAO/CUf+nqstlVNc5B1PM9QxMg7ot8WpeYDpZ
	dZab3fgIBtsK27IGSkXoz/3Zt9421FadL0P7GFP088SJvFBfSbwXEFbpIYQ3Ob4xgoA
	BEaDSSHGPdW/AidzJefg+M0ygEtWU4o4+/tcg2K0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657126012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wBJvzGsQ9MDLEDrK+uV6KHAlQG14K323QQoms9DNEUw=;
	b=X7xukjfAlLQFVWVuD35z2fogNmXjOr6281JwYEayf0l83OndI/LpMDccgaT4aA1e
	jf2C3c246Nm/lrA0n26azNjDTez/FM/ygPCijddLgLbdDozV3KOEMBE0K+NoJmL9scf
	sKnCIA6qGKIEvNoR+w71WvaGu5yy+rTa3Eh7fF9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4684569-ac0294b2-ec04-4bd8-8105-83159f78c0d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb5b0bf4c8d9478c702ee68187493eb620bbd3b63ba4d4d8727a501afddd6e13
Date: Wed, 6 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657126012
