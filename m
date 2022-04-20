Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A14310F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 00:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650415678;
	h=To:Subject:From:Message-Id:Date;
	bh=Cuk3ZR5uLVCG/zYr55Ac3cep7bu2PhxDmaQfahNIR14=;
	b=YwdyADPGvZIEU5GfXM9hvc3ulngHjYxqBJRUupZCoQk1MEH13nJASjT7mpKYaVDu
	FWtbv/tUtWfzaHaVgTpc5sBhGbo/Ll9AcfCvl5yiXmHYnyNF5w8TEY+yYnIT6S+Or+8
	31BmURuQbo05zcO7i2Xicg7HJ7jRj4TgC+WIqnAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650415678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cuk3ZR5uLVCG/zYr55Ac3cep7bu2PhxDmaQfahNIR14=;
	b=TzFEyPcLTLCWhM/9F5gFySQDro3a5wf4QN/cervLm3AxyhjdUyLqJzJrmI+scp3R
	Aj2du0FVNGTqJxX0cSIkX+bMegerpn4GAJQlTn15stkRaVi7YPX1JIuSbJFhp9vPmGh
	MDVAAw1XAt/OGuMAGIMTfakC+/E3qpsvPW0SPik8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804470b376-cc7c08fc-0dea-42cc-8f2e-46d4c6191ee1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67190093020340734626a15778d83fdaed8425cc1319f6e9fc07feb95a687f7d
Date: Wed, 20 Apr 2022 00:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650415678
