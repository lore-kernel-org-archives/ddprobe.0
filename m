Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C51186F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661359853;
	h=To:Subject:From:Message-Id:Date;
	bh=c778JHh1Z1tyA/ftHiGrqD5UC6vXdQWatogbe+LOQZ0=;
	b=DmHQqO7qf4iUXPgwqqCcpJkMx78rZAVBX7yjUtHo1x27pzsC0wbgtoikuMNChhBB
	sMXRVgSZqYwhsCKxmrpCaP5HLBy/wWjn//UHNRoMuPkI9IwF4QsG3QnYg7j7v/TCGpf
	y2X/iNtfDRa72DyNKnxsCTy9CZNz6tS2BmliaXAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661359853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c778JHh1Z1tyA/ftHiGrqD5UC6vXdQWatogbe+LOQZ0=;
	b=gKZqoOlG8B2zu2vJwmm1hszscE2vX5L6DSNhkMwgTX/USfP2ScQIZbqE5l5qG1Eq
	B/XEYHSVyRFuhjwvDCE5LBbqiqLQSwj3jn9FJyI3vraJQujVS/nK7/cEcvYE+z14JRX
	QAGtapb8t5vmkDe3LyvTzvKfj9DGtsRJPYKk0Tks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0c38c3f-0cb72cdc-959e-44a2-b33a-a4cd0359bb37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eee6c5a325957a95d8e9d0e600f74239d4b267a42628174dd3d42a546501451
Date: Wed, 24 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661359852
