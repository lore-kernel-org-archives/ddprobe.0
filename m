Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B2817D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660134052;
	h=To:Subject:From:Message-Id:Date;
	bh=nP9CrGfTLO3sJ+WFI39/HYzWd27loLG2bliu70NGSt4=;
	b=XeRL6L9luM48I6Z6qcnoK/EMLR6YqjnT6MqO/mWMJJWaAaczqdhT3/KcTzvYZefN
	IElVS0Mq/EvB2nlTVv7ofv0dFrY+Lf8y7JtmY8iTXHPaKpz0poqKAj8dnkra1k5UtBE
	ZBOcegFBQ4m5mgDofStEa072HjWHz+2CmTgp3t8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660134052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nP9CrGfTLO3sJ+WFI39/HYzWd27loLG2bliu70NGSt4=;
	b=EVvxv8tn5nDIW+FWGXbotOur+zvxdEvQFFTvlGHjcyjoB6gO7GNDxVzF7u2iDsCS
	s4BaUsaeF4K3K0cBfPBPR2Bb1Wr6iqxYdtita4ejxilYBoIVGw4HPm0Xkie68cavDx6
	b/3WrTryOyADheVAHByTqrZ/UC7v71D4DXDx8RuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287b352f2-86b4810d-7168-4d07-81bf-fd2a3dca7879-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b749d008bfb9f087c34ec334a195396f19dc234cdee7e1f284886c878edd8a31
Date: Wed, 10 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660134052
