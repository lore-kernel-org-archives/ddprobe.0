Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDA2614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647123385;
	h=To:Subject:From:Message-Id:Date;
	bh=uX1qUPCXzd6+1qOkn/YJWFwVsIlRP4sEUlS+VCBEzF0=;
	b=U0UEuP92C3XqlYqKJwIQ9bHH6lXfQzT83IWKoH8HoSBDwPx2Id3QNLv/pxJpVJfb
	uC+PtLJpXhUCvtAruoe26R2hFwMG7JdZr+udcxIKGLFhbWcNYKxGs4MXG0sbxGyyRul
	zbw+gR28SsW/d4wM0Ys1unaHW0Bxdoa6w3XghkL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647123385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uX1qUPCXzd6+1qOkn/YJWFwVsIlRP4sEUlS+VCBEzF0=;
	b=DlWGtMRVZ8knlK6TU9AovZNaGmGwpWM81CiV/fP3ElTg8m8KgtDBVQ7ZN35c+Xg+
	KvlunD65myWT4eNrxJN2DzViiO2YIKSSUw3DertaIVyVoKKJ0oCl1ru2gjqpXJaB2zt
	XX/lXDcBLrcN7yEKUn0Q6Pg0QG8QLDBzPTXQVwKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80344a4c-412666e8-f7f0-45e7-9c35-19cfcd40bd02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28c3afe4e1f9dbc6e6685c388912fe084a7cf30e9195b73117adab5f237854fe
Date: Sat, 12 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647123384
