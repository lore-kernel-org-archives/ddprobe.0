Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD93368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657158412;
	h=To:Subject:From:Message-Id:Date;
	bh=7lIbe7/kP871zx0ua3MXcphYsHiI6JWZiQ9AoOLcxtI=;
	b=ZJymLQHPAy1WxBpnUagzBCDCqnWW4dJNSE/FmkWYHAA1gCWrmNaO6V045PwW5o4x
	S6eeCe9QBS97cMiUv6efxVezTuXLKjkTzZZ/T033/uQdvPnD8t5ZOwEuQ29i5Q21r7o
	acUzFRyiLRsmtMFTw0l49rikuS34+e6bZrIV2dVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657158412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lIbe7/kP871zx0ua3MXcphYsHiI6JWZiQ9AoOLcxtI=;
	b=QLK/t40GTJ6gveyDtEjoJfMb26rNEhKof1y+pH0uaYb3jFdF0G/aIp3gcvD4IsTh
	ED/65WlyIyLMyAqp4vtxRUYlGL+MR39l28u/TFxw8665bzjWZYntdR/Q9JiynIhQu+M
	1vNsPi59g8pMEUHqp2haKP0E7aNxuYLPmoj7TOp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d656a802-42a0e834-9070-4946-bab8-b5c3310b8572-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4cf98ed7669d458ef57aa7e83307fea0714458e59306e68437b02aafb20079c
Date: Thu, 7 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657158412
