Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9DA57D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645309884;
	h=To:Subject:From:Message-Id:Date;
	bh=NpP0KkGIScMbKI5b57bL6yNLAN9VhiBsIGJA34vswLQ=;
	b=ZUjCryVz5u80hPB3BHbnkdbz3B/s+2cB+97Qj7zp9p7lJvzb7B0Sl1UWbReuSLZq
	dMAmZkWJXqkjB8gyykGbzKTT3BcjjtOGaVggFgViAlNofJX1fXe+bSfxnWO4hJrqOUq
	DHQOuATKTfX7lcyO8rDF59s5sztqn/+aZ+lNKk50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645309884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NpP0KkGIScMbKI5b57bL6yNLAN9VhiBsIGJA34vswLQ=;
	b=fM1uAhHttAWEk5D4kTIW+Y9JolkIiPbrX5kzgRAW0tA11NV+Bm/uBcFlYWNzsjvk
	DEY3SWFHgLL/VL+MTsi8LuhQhZ+FcfmlxzqLPVR8K7xKIblgQR/LwaXcOhlfGT4F58T
	D3IiM3W6ryxhnxPvJFwDJho3qxlNmMcH1Pjwjvy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f141c795d-107b3b55-9f65-48b3-b11a-e3ed9bfc5d13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98ed9d39c632cc2304e2b14c43d8ea57a7f0ab57e29a9abca9157e707897c475
Date: Sat, 19 Feb 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645309884
