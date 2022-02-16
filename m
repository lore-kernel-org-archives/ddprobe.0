Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EDE1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644984085;
	h=To:Subject:From:Message-Id:Date;
	bh=9ByasvOzt/rZQj8WsI/mB+/pKnBkifen5YdAN1Sqk0k=;
	b=diXGUEzDlOTgfWQ85oTd/1zEtxFhwdtmCLaO1xSsYf8kZU4qX+xn03f55vq4Mh+r
	dCyl7GAA9CqJysjVUC2mBY5vr4pjKXewVHeQW6O0cNnzjCGTf1mfFJjeWhQuKz092ml
	u1As2LfBCSU6BR9salVp+QOGECwp9bRR81wBbZ7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644984085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ByasvOzt/rZQj8WsI/mB+/pKnBkifen5YdAN1Sqk0k=;
	b=eZRVwOtLwPXxK/KlByM6dE7igNwd36ZH4nAeK7Ia4hCmHyntNwvkEiuEAXiMqexO
	Uk10Kia84pKdT/rVZt7TqO4Yp5pAD0HCpe3rA6Xe00jIGbWktkWeYdhy75lcIvdIwtx
	O44/902ew8JrW3d+oOSNI7PM81XwTtSUb8tiutNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00b12901-156be260-ec79-4894-b81e-033c6c1d98df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13142e5b59a49534dc38f230e822d47f6705d62282ad8c3fb5b871182f468d36
Date: Wed, 16 Feb 2022 04:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644984084
