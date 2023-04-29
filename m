Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860F417CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 381BFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682732706;
	bh=BszqS+edLpEdIyyBYW4yHO4j9x/Pu3qqsUtsGZTFyEc=;
	h=To:Subject:From:Date:From;
	b=ZZEYsAsCx3XxMfb4tftwykVnr7hYki+Bu/AVNJm7D/ONZSENWJM0hzs/Dc8Tap49T
	 ujC8iYEDDQZnqK+Cj1qmGXnoLQ90c4dorxKNl/IS3mOxPmPJy49eVrdGrr0JXbr28W
	 BqB1HfG/qX42LYiVE0TrYv2IX5JhBj6U8YW+Q55Wi7Fe+uUVmwfIsKm7ZOQVcvUR06
	 BuBNm1YGw78bEa0xDOq69Sz3GNVAJhtRjU2BUHYY2W7KW0hTHXYsZulc58+2mZBt8E
	 pMn7TLzOmUs24wdSEB86dReE2+scpsgJSM6dDVDfuGOTFB+CgK9n5FsbRZeFa7Qn7M
	 ev9EYFJ+dxnhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00357C77B61
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273270598.3258.4478275827271217599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9258ea79232b375cd5da5144982275744d7edba03cee60dbb7ddc3a6dfd6877
Date: Sat, 29 Apr 2023 01:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682732705
