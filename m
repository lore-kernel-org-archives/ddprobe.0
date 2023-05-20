Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D748F5B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 22:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECDBAC4339B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 22:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684622946;
	bh=6gZ04R9jYJg6LwCnbGFlAnSwiLEPqfRW0blKAr/pHwc=;
	h=To:Subject:From:Date:From;
	b=CdjXP1MHsqJcrFye3yj2r2te0GuY9z37AmaUuI45104rQyQFqzNQFKBHv8RHhf+gL
	 cQeOXqxAHK5I03+IyKeoe1s85wwfhXOabG7EAwbo7e9eD2TnWH7RSGB5PQVpGiwElu
	 HnaBdOkuIYF3tQ/k+7oFkmSaa/pkU4oumTtUyAnl/3axMWxwk44Gx0JtIJCm0kjwIL
	 AFq280ysqfHHmUJLzqjQctSM4bQmL/oKxmFvIviySpCq7oNn3i87wDJM9T+JYbMhQm
	 sKH0GG7o2R/R2d2hVZxTIG343vvDPBF0gIGhvcIOVIiktcdTbu+qUWnYD2pBmfCyuR
	 8IiPhGzwvBPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD79DC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 22:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168462294581.19021.13812885756151469099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806411fe7493f478473db467aa7ba16e9c61c40e0f11404b20cc87e0954d81d3
Date: Sat, 20 May 2023 22:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684622945
