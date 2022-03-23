Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6F01360
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648012284;
	h=To:Subject:From:Message-Id:Date;
	bh=BL96wm352kupsvHVOpwYDvMRGQ0/6FGsrsikX35oG6U=;
	b=Zp/4t6FlWD1+dJI8iZ7ahs5JgDLl8/y8tOEWTapiPLfPQzXg5LxpmrB0Tcyq8dOx
	NpgF7fe00VH8SFNd88KBQtnKAilVCzOlph3AavVTAePD3eoIM0oFsvQDNAt8I1rV+Wb
	kxdZhVTmN+6IJeztC3ELzsSLMM/Cwkm0gOQrwwdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648012284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BL96wm352kupsvHVOpwYDvMRGQ0/6FGsrsikX35oG6U=;
	b=jNi/HbdShPrTbmR5RFkQBVZJLdCMVz8w4p+A9s6zqm/iGOfPinuHAUASQKwSU4KN
	198UgoI3LBvTXcxuOv+8C8Y+sQCtOqGqqhUEkGfkb76HXq5lL7QuBNH7m+7p1btAiWF
	ZF1AL/U8tTlVatc2guaqa05MYeaK6VI/GGm/p/MY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb52fd374-4aad50c9-498f-45f1-a41d-52dd3c85b592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e121553d12a91c9d98e9b8ff5ded27f2ff4b4bcfc6c3ce9d1f2c60606b02974
Date: Wed, 23 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648012284
