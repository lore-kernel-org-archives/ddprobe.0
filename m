Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D275678
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHQnp5XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AD8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699674496;
	bh=jP7aUfpz4btNklVtl53HPyrAUAHFjl+Er/bk6/M1zRs=;
	h=To:Subject:From:Date:From;
	b=RHQnp5XLC59sQee3P1wZmTDBOmJUpIwHQALj5qBHUiIPo7zaI7CXMf6ZJ3PYK124r
	 ovCTvjTaJcI95zrHNgH4vBx0ftDaq6M0RDBTa0leNDdNkJNYD2eKyu8y5eY3A6pvAC
	 +2lIoXlzab1Q31482m1uABUjXFIrl3emOXMvwHyhnXX8NUyQQbbtrvbER51UHxRTlJ
	 H2fzoK0qncsJl+aHpLZlcnY8ICisU8NND5e/C82IKHo33vbI4kLK4vxsTAlB9TB7Gp
	 ClVRMXR6Pi1Ziuc4RwIVtujKZQ6LtgeuRExSlwwV8YjKabntFLK4U/R+PDzb0rK8Lt
	 Qk9lugnDEAfFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D75C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967449638.19716.12130652840209388980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3755ea303b3175042e525be73eadd9ba4365d5323991fd88cdbc366c4f2e9df1
Date: Sat, 11 Nov 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699674496
