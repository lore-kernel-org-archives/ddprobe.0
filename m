Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7FE2F21
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 12:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652357999;
	h=To:Subject:From:Message-Id:Date;
	bh=87Cuj/1tICyv3/dzk8lSXDR3c5ISx2jnR+/1+uAvLrI=;
	b=DJAeh2xbaSppH3IW9Y7dZDYC+OiOD/KBGhGSm/TXCySY5n1LzqjXKaGlT0cfmDgk
	RO/WMSKKvuihu0iAM8924ags8cIUKZnGp5WKtcdHIiHBH82Pq2Sr+Vtks9zmfHLiaZP
	/nzwSjtwz0zuAaHeGCxS/bF4LlSb2GIqtpzpQMk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652357999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=87Cuj/1tICyv3/dzk8lSXDR3c5ISx2jnR+/1+uAvLrI=;
	b=Rbew62ZFFHMKqASnSjQAmPbOf+jEGX0wCbUHAn0YpJ5g+uEuTRLrR/3ltQIQKgEG
	rSCojl6URTQsaKNtwSl0oXs3hlOyokaxB1Hm+JCP1vStzI9Ech3naXvOUYb06xqKt4i
	gabKqYPtYwLpLcyqOZdH/38XDtVOU9B5TXGTBjGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8362ad3-5ff2a9fb-4acb-497a-8721-5fc8e66051e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a1f8033c6e9f9dac877e88ed4c9fb0ae12be842ccffc62a9dc300b95ad0a2fc
Date: Thu, 12 May 2022 12:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652357999
