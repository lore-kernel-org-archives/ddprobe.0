Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C3F4683
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 03:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651288978;
	h=To:Subject:From:Message-Id:Date;
	bh=kK9dTRkc0EYBmkOAlXBk7yRkwmZQVz41E/D2yWJLCh0=;
	b=WufRhxmFYtEon2Rg+rEjwr2tTpseows4Xh6NwvQC7VfnStgbhpBUzUo5vfvonMQo
	PAuRmnYi0r4MzKFCcsRLFvKtRbmE1RgQpyfkNGsT3c3/z4AYWdnzYTN/nfDkPmUpsG7
	6FaIqMbi53HKL7Yb4SG3nwqq8NkXgEs4pPvP1lpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651288978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kK9dTRkc0EYBmkOAlXBk7yRkwmZQVz41E/D2yWJLCh0=;
	b=jO7z/0XCfAEwUWp5I3+sRVhypaUnWUjhHGQsuHpwPg35dx40qTHwJwkCXUk9fJwH
	oIxRES+1eKApYEvPvFx0rTMk9mOjEY/9f3B+n8HIbRhSMaY8FOaFYXs8k+fME7IqWIH
	mJMINfhNW9uPsOMmRPsnXVq3gl8UlThs83qnciVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180787e3359-633a0310-3512-4385-9d97-c012741efb8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a372a8ecfa097456a0170eebaf81ed2c2bf872c4f457c53cfbad7c23455a0638
Date: Sat, 30 Apr 2022 03:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651288978
