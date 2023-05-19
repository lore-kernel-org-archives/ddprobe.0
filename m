Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E1C8F4A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 18:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2743C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 18:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684520285;
	bh=pGzDQBgCOFO5DQ0jNql9dW9m4IKidhoNTOjK/ZFfs0E=;
	h=To:Subject:From:Date:From;
	b=QCIAsg4hjHLrG2/ZKwDJD31jEuUKqNXN6T+DnR2B8Pv2/w9m2nQqlVDp+EHsU55ak
	 lzw+Y4El76Q6xyR79HAcHJPNMoh/hM+4lrA2w7/bueszcfUJrHHqGjcpuZuG3dPb1w
	 4cfUy+6QSt59AU5qajptkxKESxHxLKtSULmzhxxHnFYDNWMW/OXmCX5eOQXM0thBlz
	 UxfI4PZF+3ofqhFT0qbm6wiAMUGxSydKUyjLcqnZ00Uz3yFg031Uw2+4v5RqqtsRuV
	 LjqfH+kCcPK5zdgSHppmyFXto7VipB8WFZLv7Q70B8195zn6o0OSPRlfJTCW0dB7JX
	 wVEUxp7IJe/7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63C0C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 18:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168452028573.15633.5660259662236359050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f86c32d1dffa988df6718d1e883f346be4fc304789e5f8ddc889729135f87e
Date: Fri, 19 May 2023 18:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684520285
