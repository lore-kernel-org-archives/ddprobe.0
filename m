Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5F315AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647585385;
	h=To:Subject:From:Message-Id:Date;
	bh=vLLxoofJH8nyWW0ksKeU51mtKsm9xbiOC8Q07XjLirc=;
	b=kU+/ToZy9AqTohpClAyX72ozinQQJPdh1u+BLR+teA6hgRV1+EErXnxiEf8UxK5v
	RkFTZJDxI2M30ugKeR3hwU3q8bXW0aZK3NER8P5xJpiF1N8kLQL27k47StHRcOa54OY
	yRGJxq3mnCO+Ft/93Tgkydxpp5yrueR2frTY/kf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647585385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLLxoofJH8nyWW0ksKeU51mtKsm9xbiOC8Q07XjLirc=;
	b=BdCb/TccuI2s3t7MeCvmUnIG3xnkSzaYJmLBQsQKhUGZM0o3spS3QP70gJ1aeA1A
	6WcrVT5B1Gaaz94okwSPkrzVsLpOMU2rW00qRJtMrNpg+gaJM2S8FlYBODYeFpn408B
	Is6mTwEmmlaNmNexVC0eviQq03GvPPw150ijUOD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bbddae1-605d0f1c-947e-49b5-879a-2daf4df8b9b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89b6ced255023d842724cccb25ee1119e7fa3ce0212949f1bd38384e47b12e1d
Date: Fri, 18 Mar 2022 06:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647585384
