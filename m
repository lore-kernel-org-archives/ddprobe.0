Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FB4C126
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM3Ypszi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80369C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703228296;
	bh=4MMC+raMEzpustr8OT3NXeQiEuHhjrUWl7P5kbtrMHA=;
	h=To:Subject:From:Date:From;
	b=WM3Ypszi3ZO4MrBFt+XEILzBYvGHfkNdqWjj660KQFwk5D8yu6Jt9HbfNeoT6Arp6
	 ccmRAnAWjtbG7MV2eQQFnuGSkUPz9oBAHxFzsn171TUpPB3xLdLv4l4me5RLwJgm8C
	 lZzVucBuph/ZV9+rrquJgt3GEE1bH9QFzwRbIS6xFhtMkXwkFc8u6eDQGiIcQrImJ3
	 xj1lJqWdSUX5MNAWOMBcN2eGoMygtiTzK5VU2OREi2pkscpUq6WnvBY1EgV9AEJz3O
	 XdubRftCzkmhYKnVSPWSDtLLIW4t5czkLJuAuCGdP9lMcmYA45TDxXrxMH0/upLp2I
	 ks6a4TSwdhq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64720C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170322829639.27034.5479511115762085075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0e27390c2b79228b7b5f5b705a3ccad8b7cdb8119919908c083a4714b54e18
Date: Fri, 22 Dec 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703228296
