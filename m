Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A83C4C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646013384;
	h=To:Subject:From:Message-Id:Date;
	bh=T8j6oWzKuQ+YCwAX3ubzXtoIz+mYjouHwwCJ5CTf1YA=;
	b=GClhX5bAqcjQgzAG+mehT6X4030oOoORYH38TDV9l89evv+e1sCpBZEJ/NglOjGl
	uRVk8+Vh0DzGsXJWrsFCDEmeuJyVZkCAI2eJD596pzQjIMe7uUMYYyDbv/edpvpDTOY
	2os9rtR3DLPPRf+mT4VxQNtGYnVYDCCC5/h9ue1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646013384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T8j6oWzKuQ+YCwAX3ubzXtoIz+mYjouHwwCJ5CTf1YA=;
	b=dj2ZLjDg9yPsGdfpOxbwxSAvpCe31CFqlPiMfrtcJcmc2j/jXdKByKK8hJ6f8toq
	zYc1Nz30bxMnBMplx/zkhorRNwFq3arx42pEL23temZ+cuhxlBpmJqvPb394tgZ3k2p
	v40weVs3s0Yf4oBMmyF/0eDGcjLJoBeBABocPqw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e0b081d-d757df69-a309-4bbe-bc0c-dc71a0b5aa53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 234587eaf060fe7928c00b0e5708dba739a46143331f3a99a36228533da66186
Date: Mon, 28 Feb 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646013384
