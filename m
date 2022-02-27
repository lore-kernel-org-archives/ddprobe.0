Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D0F4A91
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645980684;
	h=To:Subject:From:Message-Id:Date;
	bh=Njb7Sk18gaZGuc0aeqh6KThzAnKAm/+U0yXhqZTErSw=;
	b=MBq6sWBfDyyHfX3bMBFmYRsFnxzOD2noveyyDnt/UWv4uQke+p+0zOUGxeSeeZ6s
	+VOod1FYexuTj3eodGAeEc6gKMCHt/tBT/w8zeS9839KilG9ZGDJObdC+LPU2eP+Tjw
	kNN/mOwG1Ec2ekGdA0kBFZlqyWyzZOhmGc1KtpKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645980684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Njb7Sk18gaZGuc0aeqh6KThzAnKAm/+U0yXhqZTErSw=;
	b=LMVYfd2uSQdjwYKzj3bPoUcmMQtIHbcidEFF0v2GIsK39bNdVLUBrrLM0GIOlqk8
	Y0ODLq7LJpWxLJETaPXx7RG1V7foWc8t539mCkwBaPqtAWH7/c/C5DxwRxfxypQF2CZ
	j74Gh0noCl+kLClHKhiexJPoYK/i+4iDZKLYDcQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c1811d9-ca10ba04-6958-4044-b9b5-5e641fec0dc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ef4f48ba9f13ed88cad787cc6cfbcf925d14dd4656d14e130121f829a7dbb5a
Date: Sun, 27 Feb 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645980684
