Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5DA4AAB
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645203385;
	h=To:Subject:From:Message-Id:Date;
	bh=BVajbwkqrLR5L0IP0cyReLWSYB0PZ5VsZ0qNHzUZyLc=;
	b=XZ9vu3DOrOqNrb0HvUW2Ep3dzmDMphN2TjahPcTuiN9l4e+uSrFXQIrytvnGN5mV
	mb4Wxyh2votYl8/4qyx2x3tyBBMB+k1gGZtpvpCKkMVPVvIyZzh2VpF9VAHR+TLdXzW
	Ks2JrlY2racpC1eUJPnyag5mBm/u9Fphgu8ha5kk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645203385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BVajbwkqrLR5L0IP0cyReLWSYB0PZ5VsZ0qNHzUZyLc=;
	b=MgQmzHn2YZ1CBxOrDgy833Go9MZ9obch2YpELS4562fah8X4S+/HnnVXUVfjdRFQ
	AZM6fJwBnQmNgoK9fd1bok0N4NYX44S7gO3H9R83vupSBjPx5PQUQ8BhaTxIp9hKXdB
	X25t+78nXk+h+dvipRmfc4jFBSSqXS6kR+IubByo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dc36ac4-a6841c2f-f553-41c3-9d24-a76118518dd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a04659d2ea22c08872c3945434a2f09d418292a01107877a3582cfa9f6837ad1
Date: Fri, 18 Feb 2022 16:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645203384
