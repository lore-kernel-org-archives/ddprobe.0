Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503F923A8
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC7CEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681106466;
	bh=brFvRm+VdBWlhokXVsac5+WzT0Z6AaBy5HlM6SdOQWw=;
	h=To:Subject:From:Date:From;
	b=WS+2tIIcxlluEC14BbdHa83zhAh8Xwc8lTVvpJ7DHv8Ss1e5H/obVZKjiUV7jVNqM
	 jAedP1XADUYXxd2n7bHuMWHY9hlO3ivu0rdxZIpX6wibyV2fHfLhdyo3zvVHDXL6rY
	 9ZWCOxGZm/6fK3EM+rgsFnfxmaEVYtzMmEV7MRP6reqTYrTO9xZF+K7o5Ab4Ghj9LJ
	 FZq6mls4ssfBf0u7vBCO2dBWnAXpzBX3cnzMssfAu4iQK5bQUIpRkvceZuY6q30cW6
	 B/Oze/miv52MjCOujPGPJf/nmQ87rcKO0xWU6Fz+VhoYx9zffGcdL86K8X/naD9X2p
	 tvPJesIEEAH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB15C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168110646581.16642.14583311954043974000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1dabe55dab0f701f82240950d4ac8fc310e76cf8ba6a07f86177c49ffa3588
Date: Mon, 10 Apr 2023 06:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681106465
