Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A0F28EB
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645014984;
	h=To:Subject:From:Message-Id:Date;
	bh=sz2tFFJeIQ2Y1lBhLUk7ywUYPq32yUncgk0ZbtweL3E=;
	b=fbI9fyRD+mkMV72w3itWS3+/QknMIRbbmKkQdMupo0baUDP2ZRV8M0iJUkxAdjBM
	V05zFPNmF+jSeOCFaTN7/Bte+do/tuwMwbeS9FGUjm6x9W2yFBSeHpXEyg4v4ndrxLq
	VLa/xtJ4Vy3Dm1EPz4D3z6UNi6EuST1MutlTEQ6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645014984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sz2tFFJeIQ2Y1lBhLUk7ywUYPq32yUncgk0ZbtweL3E=;
	b=OGbRZyCVIIolmeSA0BetksC+ChRf0/gyDKTvzjNbDzdsb+veBf6vIxV++NfbRfFq
	GBFRNews25iqfvXyoIXr3uB6N7MXzbv59v01ncl3QIgrnHEMasWqcxtv9sdr7ZFE5Fx
	6mFE1m1VlYdO+Dt6GGdICFUKCAzxmFDJ9EdzO8Rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0288a81d-baae70b7-f9e2-4260-bda3-19428d59fb46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a5100501a55d3c1d4e8dc81ce89a728cdd2164e587338685c7359afd31d2985
Date: Wed, 16 Feb 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645014984
