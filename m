Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ECB8F63
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC70C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671810687;
	bh=2d1YNkUgUenfKyrnTKloEW10MmvX5iFklp78qyRqx1o=;
	h=To:Subject:From:Date:From;
	b=m9UYsjkOKpPlhH/jyxSCVUrjxx+e1R0bZo1hWmlE+rzjpLz2jvvkID5q2VqLEDO8O
	 jHzWsg+QlkFE0Sqh/YmEW5c85pBvATQwO2jvtsFX1PUWjoMHJHfsj5XlhYFYd+hPvX
	 hLcWmheebBWcf4ANNPhQYO7/PDYefJpdq260Sdlgp/Mh2eznYorMUFIBGHpAIhmMqm
	 wstiqllNLUXX2hkvnKBLe+SSu+/zJ+EbDCev/vnLDV7yZevbjwEtF7zaULpKofiyGA
	 bS6C+WgeZiOVL6WEXMVkadadPw9+pOFzLe7VEkRb0wo3vNH35NlW9gxjtAVlSGfyJX
	 6vYnX1IxziiLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76C02C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181068747.26029.9138518750615896591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d282e9b03f5d14d363d4cef2bcc9a4c1745d73728eb3e0f2dadbac9711aabfa
Date: Fri, 23 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671810687
