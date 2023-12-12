Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC777BA33
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd4gMvRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A28CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702360096;
	bh=MGf/3U4A/ejlmqpM2ysKHrDOZXqgDLa7ReJoEtKWCWo=;
	h=To:Subject:From:Date:From;
	b=Nd4gMvRTrIPE6c9lZNturkiWjVpMp4FX255nTYC5RJFBZrWPNXmb/uUw8rh9/AHta
	 cK267hoGTaR+BTfEDpY9YVia8gXJPpc4yityf6Yz/bc4UPaK9VkLeGfMkz8o+UqiGW
	 yDK5WZ3QHR4YUm6n5ZmfUr07NbYMjlaxfqwstByzdVY7WL9y+qBsAIJJg03to9uhG2
	 KQbYPz44idXPOrwYrXSppw/QUVPLIji275aK7lDrLJgk8BmV2TlU3FpyVVpFxpUfR+
	 w7p8GmQid4ZQ2Bp10xrJbQKX7V7RUPWruBuXOLoq8o4piEbAbNl76+Wx9eaVCRsUDw
	 RNNbtlBvQccMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601DCC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170236009638.6432.5055270880615724155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbc643146da00cd70f6ec426b407b86ab2aee364845271988d9b506a1bc7667
Date: Tue, 12 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702360096
