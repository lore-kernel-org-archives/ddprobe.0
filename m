Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3C57E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646952984;
	h=To:Subject:From:Message-Id:Date;
	bh=jl2d333vFjm3i69xEJcZ7GYIgAgOZ5Pr906XrKV/WKU=;
	b=OiDT/BK8CRR7N3sW/7Fx7NgwMeFcbtFKfc7vdp5tXqZveOozUObvMgTJd/hxelwq
	pFT8bDo117iwHeNn4YAEF3AmnGOMQjKVgdqui2+M5RAwizQPP1Arj1MvFvUA/lkjHqN
	OdRB0wRnt4ceRf5iK1ZCW3Eo8PhPXXczpjDN0BVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646952984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jl2d333vFjm3i69xEJcZ7GYIgAgOZ5Pr906XrKV/WKU=;
	b=kbBjBkD6b4kY6GY5KyO4t6vLaoLmCC3NnYT8LMjKqWCijNQz3Dm/p+4/DGT5B6NH
	5b5/Ra5BmnnmsswvUmLs49WyYxyhXE3EGVB3pjJKNB9yNdUIRQU981nfBYQ3Or7hFiq
	fnL9xElpwLt9JxAnO+y3E2IqoSuNXbFXFePDO+M8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f760c30c4-616a51df-706e-4083-af25-f368b4499a2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0cb21d164687ac439f7d0b6a8470f1d7df9512509087e37c505a57bfccffb71
Date: Thu, 10 Mar 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646952984
