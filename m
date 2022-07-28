Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FBE7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659046852;
	h=To:Subject:From:Message-Id:Date;
	bh=JSBG2HxKCBsu0OMn1AbWMBai10ofLM2K7NP6tp9OpRw=;
	b=Dnb4Y6B4hg3ALCC16dOF24kUl7rdqHgYqNKTFt58rfNVghX2VcUJJvD8L/AwJUmO
	T8xkFiPoK2CJCsRrtc38vLCeKCT73fdUbMGep+I8IJct73KyoAg0a9aI7K75VTEZYBX
	VII2riq5DD9DTwYveBp2cDGUDyu4qmU2Ki1vnhE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659046852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JSBG2HxKCBsu0OMn1AbWMBai10ofLM2K7NP6tp9OpRw=;
	b=hk5FLQh1ZitIjYRL5ePvQU9wtCVKvP+EY7mCBQ7MLxhCPqraoAVhGMt/JwuiFiX4
	508dWz+OkBun4nBzW8i9tvMWxe90owGsmkprBg47Unb13T9z0f/BxQ97foty9aimdYd
	ksT4Jiq3VoVuNhS+LSEgEoHFKOmHDfHmgAUgDfVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246e5f7c7-387d8370-ba7d-4009-a0f0-c6fb9b811c18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efbb2a0741883c8f2202988d26ab178db9af1a93d1504390a97a6c1eac8c796e
Date: Thu, 28 Jul 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659046852
