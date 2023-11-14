Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286C47488
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFrWEWGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9440FC433C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699925896;
	bh=1BCXFhFAyk5oxMNOFrHwECoGtWAIpWjO7W4rNLnUc0c=;
	h=To:Subject:From:Date:From;
	b=tFrWEWGHiBtjggA9Ru3l/kCoW4UIzwD0h5kFYMnp5fM9U+sf9stO4dIgXjbPfNDFX
	 EFRr8qW0RUVEkwxbwhdl5le9FdQW8hN4kG3Nueq3ISoQfXDIraBYx8kKBjm+XjqMAI
	 kc8DL6ciCHPQNFXzD5MvmWBvUkFYwdDOI/lC7PtM+em+9JjJyDCZ9/dkkRwl4p3146
	 s1ehVdU9D/Yb3cvKUoo3IQsWbTp9tDspZ7mjNXJMSKcz614TR3Oi/FVzzGJZCs04Tu
	 iHEOO36iYZ6tV0SFxgGzO7s1vCCiJHAfc5C6pG7ClMn6DiNKI4BFb/KGpWWHc8OQyy
	 0uTvwMqQ0ZOxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D59C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992589639.17508.14593112540741516183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed7e3a2f4118c0e67afc8a9321fe5c5e2a3e8619d2e0062616ccd136a7a9ec8
Date: Tue, 14 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699925896
