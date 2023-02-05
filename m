Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA127B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 00:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0152C4339B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 00:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675556165;
	bh=A2W95jX0RaRn6Le/vTM3aCBjjk4B5ggOwtB1PezS6v8=;
	h=To:Subject:From:Date:From;
	b=BVMWdU5ln2mRnqqkFyevHl2JHj7RHsGJejeaVYKGbhvjLv81+st3XGrvfYpxMHFS8
	 yPcGFMN5Rc+x6rm/RfmKukSOE61GUCOTQTMIUW+yZMwDCGvC2o2UwUBmsTcB+ejFur
	 6pM58hC2KOIymKm3JYLuTFefMKJCXwBSvO7r1VnYitYHdxDR4iOxzOdMVw1/DNRhVl
	 wjH5Q2sQYE3waUC4dDQrCuQ3m0WyQkD/1CfOs9EDLuKbwSLHc5Tr7Sliw+EnhSDJhY
	 VJaaZS/ibMUSAAcQwX8rAbhhPXv60WCf5JX4zvQCi2XpREOzvwq/hAqmk1/tn1lPo/
	 PWjNWzC0EuGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48F8C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 00:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167555616575.11888.3813823883440440515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9700e53f5ecca436976ca50c70e9fe4091b26e5a2597b9cc468c69d959c152ae
Date: Sun, 05 Feb 2023 00:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675556165
