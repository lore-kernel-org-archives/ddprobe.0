Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44335179AB
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 14:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C836EC433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 14:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696170368;
	bh=TqDj3p9xhtWJ05WneBhtXGfVOjRuwCpGtJ7+ytBRk3E=;
	h=To:Subject:From:Date:From;
	b=OA12GsrOI2SLc2c4NRbGz4mV6Nw3jOcTJvTch/4riVIOhw6WA2KlNL3s0N1zKR/vY
	 alZz8PAgISVZzxj8LGUV4fAIyD7zd/rpevVw9P69+XF0ebzrrahcakdc1w/pZVXtxX
	 GwX3hDZjfFJB2WPVHkSR0I5u6ZXHFgzNLpAPHisZKtzP4ZeMLFUjv9FBCKOFFrWsTU
	 W1ZqcvSOcmHa36lKSbE9W2Us7y9X/8T7qyuxAbIaxq2JrFAu0TJByiWzczYVJXCB6T
	 lhiC6YmHEuCJXPEVQ0A6QYCkh1oXpZUyOZUxs7B4cs6WSU3TGWcecjwQDoBS5FPrgF
	 KiBu35UGPQVqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B141AE748E9
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 14:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169617036871.6918.3540897974083398314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c27c887604aaf79fdbf6c412cce26f730e85942c7169b652b07b3974e30ed9
Date: Sun, 01 Oct 2023 14:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696170368
