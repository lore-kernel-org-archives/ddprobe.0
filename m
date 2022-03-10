Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1007A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646872285;
	h=To:Subject:From:Message-Id:Date;
	bh=U4OQ6Vci9ni5z+Gv4w/EoPpu8aOp89GAzY1351LcJ6c=;
	b=AuforoBMzK9Md1nDKVGvZQxcIW61CuIHDkOuMFTIeLLzUoGcu6KLW1pXKT4dFA88
	lSrM49BxISEwIp6Z/+pwUyT0Ok666FOptms3sd14BrZKYwP9r7EFDvJxKrnMaxZ6K5a
	uJZmHD85GKesRhQ+UJwG7UR0P/MRU8gHUldT1qUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646872285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4OQ6Vci9ni5z+Gv4w/EoPpu8aOp89GAzY1351LcJ6c=;
	b=DKcRMv7UvWSCidai7r9DemYVSKxWcR4ugxMonO7Tl+RtiyCG9qPNRLMNHc/XUrC2
	hblU7Xj54uD41seO4dQsMN+S9aCxua6ZWSM/wpOSawiubQiWtZkJAsSgKLmznMljcGU
	BKnbWq9a7Bn/xc2CZJjMMBjRxb6ot2N1mx3ryxUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f713cce6d-ba1c2653-f7ce-4625-9033-ff468b02fde3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc29cd7451a8a074ad30ba0c25fdc71082aed6359ec3b36bb1615a15f5528b92
Date: Thu, 10 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646872284
