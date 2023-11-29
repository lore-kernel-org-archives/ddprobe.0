Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CF54CB4F
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e532371e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B066C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701295696;
	bh=+hiGDco5Mk4K2cSMw8DOTq0V9/W+pTXaX7KpicGjtn4=;
	h=To:Subject:From:Date:From;
	b=e532371eqOgI0m8jP3Ez2LshR8hsdWB+3hkYXVrkV436LuNAL9sXl9cKHR1b2lA47
	 1WUALrKqRYYNNZ9+69rVNIuN/UIO2y5xkEbMxlpEVVC0f2AefxnVUpeV0M+aXQq0/y
	 Mc3HkzyqXyj6yuwkByhgFtCkIlDCKwAUKBUR7WyJ6VHdeMoXY70VGnsa5kEka+lyL8
	 O2MhSCEvT7wARdPvhxU04NGC0EiK9gUL2I27BB6tDW90tJ5p81XHvIviqH++RL/NRe
	 knKAOP3VTuRXqfgrPxl17xA9M9FXwBcaw8JoJXBPK2jWeTp72u2fe5ZD4+gTrkB+ER
	 8i1+jmyM8vlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638E2C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170129569639.23900.18195154849987871404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a1bd307f26660e25b4deb0670a3af06bfd6fc79a78d71cf34127bbee27ea9a
Date: Wed, 29 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701295696
