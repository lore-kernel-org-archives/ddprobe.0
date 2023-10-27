Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D31C39848
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3Xb86y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0601C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698430096;
	bh=MIJIGtEF4341S0yaTRC8idVJgbI0RSNbbUMCX7XSwHw=;
	h=To:Subject:From:Date:From;
	b=A3Xb86y5zbOB+Wq4uxe7E3GpKgkTb9Wy/9wmIv6IGRe7KxWXK7yPoW4NpBNEXyBJe
	 BN4X1kzyfv4aEU0QwnG8oMKnguuBJ+maus+0cKYEtk0ItyfayDYgT7aP4x6eRubf/Y
	 1sINJVDUtX3ZhReiHWtoceDVst+WNG4r0+dBqZ6nqes+ZzB6es6wH4oUEc48Tal9ye
	 IHhj7HmeRbLpVhYNOqaIZqdyb/37KSq92pr9SZ/93nJcEbOQ+qBKSYH9vpYzu29CQ6
	 KLLGcmQbi8q0mxkHGyVq8Vgmd87X+QJGMs4+AXbZsoGzTg1nMW2YTkE1iAQ174/tuh
	 3T+AfNVOApchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85D45C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843009652.4478.11686744495315918447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871d179077922537eae70b297903d9c84ef7bbade3652939870529e9875b5b88
Date: Fri, 27 Oct 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698430096
