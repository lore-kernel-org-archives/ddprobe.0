Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ABC33EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656602212;
	h=To:Subject:From:Message-Id:Date;
	bh=8W1IaFKeVxUyVOSF+39emRX2IE239ZGYgNhk2pBEvss=;
	b=kM7LD9eOD2b/3c6t7WTkkA0gWovhzGz8ahKVsQIiRUNgCova0NBL14MhVMu8om1d
	fCfTL5667qBED5Rc14rWmU4oZFVkr3v0veNuSrNMD/OQPv3hwjfbyFL+7bVyKheabYu
	8odaW0laNW0xklarylxFluT3KUhowlhl3twYt3X4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656602212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8W1IaFKeVxUyVOSF+39emRX2IE239ZGYgNhk2pBEvss=;
	b=bJicKe/77Qho00edxaIjw8LBPjH4/kk2yQPD4qNaKKB5GiGGnepxLGod/BjhWttr
	+OzbKe8Ivk0mZ5+CuO6VkM7HvOTwHhfKFdUQIwkr6NocfQapQWUv/GpK1Qjn16N4bXN
	A6FJtNf0ieqIDGrZhVMVfNX0rYDlr8jfJ1ciJZXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b52fb7e0-dffcd4ea-69ae-4f40-8c15-d23e2d20be16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ff3cb6920138932c24a8d4037810d671f11183d394967753b0d87c713a91946
Date: Thu, 30 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656602212
