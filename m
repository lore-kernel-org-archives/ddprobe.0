Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC5A2575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656510412;
	h=To:Subject:From:Message-Id:Date;
	bh=PcP9/9GXbsKEqNW2Xilol+fPcQu0Ul1Ynr0ixaFT0Ak=;
	b=LSn4O2xleR8VWmVSVyh80jbQRDVgpiFTaWQ4t3tc7Rkdedo6N4pRy4m8BWO9UGkU
	uK4F2Kr8t4LYCAevbqwwXOWmow5ynDuChA3vF+MkABKTmE2PegfGrfSg18nCwLmf1sM
	pJ7a3LdSTpDRdJOFbSKoDaoH1JKh+YEdEvccik/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656510412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PcP9/9GXbsKEqNW2Xilol+fPcQu0Ul1Ynr0ixaFT0Ak=;
	b=AWu05ZBL4H8XgoPjA3qfpfbTpeXFLBts+yS3RXPZR8Hj/5XOR0hA8MNXq706OrTa
	EAL2iYkgkIMyyoGVL6VDbYrHGNNGuvrTR9kxe9oNpRCEAF45XfgcZ925lZDx9u2Nc1C
	MD9kgwLV90PodzqVFbo/ZRxdfY1tmh/8Q0hXbUT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afb6f5e2-b4a34a78-afa3-4175-a703-bbadee5facd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 532b6ed80556dbaa9851a48c9b383c7329dac452f2f6e4d0a44721be43775695
Date: Wed, 29 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656510412
