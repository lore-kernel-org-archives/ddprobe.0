Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5CD10E8
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1856C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684661526;
	bh=oNHsagF9s7iAgy5QGobZuwWPf/wRmtQIk4rZQlvvswg=;
	h=To:Subject:From:Date:From;
	b=cwRx5HRdTLtdcQcgZAmpBnFvtfXq00uvug4HyvUbhARpU2bM5Loz1LHoPugTkNPf6
	 CNkF2+CL3eH8/8L3faAjfTCmvBEEVPBIe/ORvcdI0dn+yxYNqDHT9PfMun0x/ZNti6
	 vzTrNknMVJd57P7g4tOd7eyJiOlLEGbUsm5cyS0fkXetu/2jFQj0Y9sk01qxwfdFX1
	 BcR9F3yLap8fEuGIVyvqfJ5yDuhXja9ramob2EZWGZAZapziKweWJreF6g/vQyMjVJ
	 pGkKANYyn2mIeMCfMjZGl5EhWbiR3HC2wn5fryak9sgHIlSOmK9wNQFTXZDRnN7UL5
	 weAGhiUkqwHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27ACC77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168466152582.8870.1808758454891935960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a639404039124d57b6aabd7c550b2f6daabf259a27f3d2f1a8205e763d15ba
Date: Sun, 21 May 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684661525
