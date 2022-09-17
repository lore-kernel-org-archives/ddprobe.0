Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C992B1378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC2AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663417253;
	bh=Z4cmG+mC4rP8B5cmqQ44kv0p6+1JQZmb6v2suJEFqtc=;
	h=To:Subject:From:Date:From;
	b=gGkToq3JEUIAWvfwc5N0Wwlhvf2keK8jeheuCo8Wlrb4eMCNDIGiiX4E5RqoF5bnL
	 b3AiZKIVmqgR876h8OJXzaNOHH83CVPO3Zz04Z/YTxsj1NrY7PvlA4og4DCis+6uoO
	 14MNz2jM2BaQ8nfDq02SILFMik0KHQv6Dbkx+GUt3GDQ6eKzFRfBcFObgsvZSPVNa1
	 TUJEpHSKjF9G0Aany5s4XDTlSGswZv5Y/OelpqJHsYtWGO5UjqlPOzcwXaGYW3Y8FZ
	 sjMYXr+TIYNRmbiIFDtux7UYEclV3CybEYjGOZNziVq4o+ploegrERsWtcIHPlf/Tt
	 DQ0KQh8LEQsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A15C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341725333.11931.5276327036615328622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456ef86bacbc51c2e8d7a2cef9b9beb8a371804bc918b5f00cee39b30450e714
Date: Sat, 17 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663417253
