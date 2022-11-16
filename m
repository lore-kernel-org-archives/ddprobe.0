Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA2F812290
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B876C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668633654;
	bh=cmL4WIiGjAY14AUDScNh8UyQDDxzOl0ykcFFbMSBT7c=;
	h=To:Subject:From:Date:From;
	b=F1Xe2Z9tOVnN/uRHB2RsZA8f+rv0NOjg6MLz/LaGE42sqn7AByeSSkTy9aH1dqZMs
	 0GfBvYobyPeG5NS1VpfhmUEKzIWkJq2MYUctRx6lc7xWsZfTan8rd7EqvHqXYF3Q4A
	 J3no9DvIQRtDDwhzEhEnNn4NAJ5YOuG2DNpJIgQieLA9jJlSQZQvRUG2xrOzslMlU0
	 7xci26aS5qUW7c1VrUYghgl+lKyzrtubsRvAAV04DO0VAopfnJzdaO3OGCaQ+LYG5x
	 5bS1oxVVj9Ofsy73IuvGKUG7+2xiGp6w9pBTwjbWN0W7++y8SzEnJ6xeIDAKf3WOoB
	 kETfaNWOcQQow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DE5C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863365434.4519.9310566430210470541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d3f0a7e6a3c97d3b82b752acfe6c00c690e9fb057afda32be3382d492028e6
Date: Wed, 16 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668633654
