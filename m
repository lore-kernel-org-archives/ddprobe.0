Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773DD2F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645944684;
	h=To:Subject:From:Message-Id:Date;
	bh=Rzdx7kwY/xC1stleqlcZS5X4UEjQgLXQeQeMI95MfKk=;
	b=kYKwy33KNbxf0C4PvV8hd2hh7n9MuuCfONCe/0buqRSIIJ++ezQvbW3chsGaDG3a
	TVfb/g0fTS1oL7J1zTRZdveqF3R/ChC9kz3Yl+vlbESq3VBqpkQEGvSGOD0z8ObTht5
	4sG94KaiPvHsUwZIslH5nQSfJwxfBAAPOCY1v8gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645944684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rzdx7kwY/xC1stleqlcZS5X4UEjQgLXQeQeMI95MfKk=;
	b=BPq0pWRl1cKL2edMsHe21PPFkwn65nadTZbOS+7/TllkOO++z/hKsaeYN66vnRA2
	wD/tkCZxFXX8uB5tXefPw7fzJ3A/LzMmQBpIPky5A50X1e0boYL0yEQLoq5QjnVKoQL
	J64T+G/HiqKDD5THqKyvBVTrmwD/hVm8S2bGq/dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39f2c0dd-422dd9aa-6da5-4eb2-9d99-ca1bc5eaafcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f72fc5b9b5ace3f8b06b732aa63232c1302436570709a92f76abd3a232cd187
Date: Sun, 27 Feb 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645944684
