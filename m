Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B1EC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656629812;
	h=To:Subject:From:Message-Id:Date;
	bh=WktdZUlDmAc45NIPAGw6ubIHJiFbfdkOtR1KPc2U1AY=;
	b=eLQ9ZebIHQN7//m9mNYM4ZM2zEnMLrMLmY5IRzLFW5ly2OKtzTPwaWZiuOQJAIQ9
	XzAvhw6fsWcB4zQ9EZyNGFoSE17LL+RpaHNAXCWswDSexPswCcyrabtRcgIDcElNOrd
	EfeP3FOzcSOySy12lg2EYhVcjhbjEmRF5tBh8acM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656629812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WktdZUlDmAc45NIPAGw6ubIHJiFbfdkOtR1KPc2U1AY=;
	b=h7YSVW9u8en/1q1AYfZ8RczUXkInJTK/gJhnzBsnexc7d3MeirOyk9XwsF/kj/nv
	lUPv2+d3vnSm2rmv/Iq7se3gqADfIijbhcAI4eYWk2X7d+sFee2sgOcRQTjZquhLmcL
	xBW3I1gUY986huoWYmlcCS0/rEOESsPPnrCRJV/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6d4dc3a-300723ae-cc6d-477d-807c-c8d1bbb6f9e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 297ed7348e41b83596b4344d70470848e7eaea2375ba76ceb8302ab5ef92653b
Date: Thu, 30 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656629812
