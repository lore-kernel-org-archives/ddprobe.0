Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166797F
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 13:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651669798;
	h=To:Subject:From:Message-Id:Date;
	bh=SbCRO5Y5gDm8VqON53Mc6cQx2fZr7Wsyt6dSKnHgqko=;
	b=HjQVJAlr3BiPe2UeO7ZytzJUmNRJK9or53/8n4vkT+VGfLMRAAq4Q6+1xjSJ2cYR
	OubP2tL2+fgFNaGUEW8yNKHa/1N8ywZDkmip9rHrhgqtikrLsSUDsle7Tq0D/78XcvT
	L+67/pD91SxHFjzrrqsVyCsoUKfTxyo1Cstk/MXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651669798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SbCRO5Y5gDm8VqON53Mc6cQx2fZr7Wsyt6dSKnHgqko=;
	b=JKaSfR8yKfLwhcmxIP+EAn5b965V3CuSxHU+5DtyQLFxFVt2re+eQzUwgyvXTDyo
	0zeTSYuJG5VefjHKI2ey33j1wKBXkWEGpbSQOA2RpzrxsxXvDNboFSvYTCRIjKobZYj
	QqUI15pEVyZ/yN6Sz2Eg5WC2IXE3a7xZhA6O23mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f310d6a-cf5b9c3d-4942-4a52-87b4-5f595067bdd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55f15340f87b13980077afaabc12124a41417faf0fc724feb71d273bb3463277
Date: Wed, 4 May 2022 13:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651669798
