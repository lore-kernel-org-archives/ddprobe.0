Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EEE7F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1zNYRSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C537C433C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700793496;
	bh=dqeTmtyVyQlWZy6PCNLpzm7URhyUm2WpMVlKOjRbYn4=;
	h=To:Subject:From:Date:From;
	b=m1zNYRSjqVx04UNB7W4zEB//wJaTksSjZVWZkbei34SKfoJTt/wOJyygmA8u8cuba
	 kXuS96QtVY4SR6Zhw25G5jHRRmIIxCCx2XrZvsLZUmcTvV65OoQUOhM6uMeYuNDPZv
	 rDn/piB8W6YmydHd9L+JyPof7L+yPiuE1AKK349mtUpb7Ycw8w2PSSdw30+FrOlNUM
	 Malr/wEfZWM3A9K8kuTw0vO+Zsyc4o4yDgflOy5dQQkAyCT95T8a5uwUySkEOfB/eM
	 OLCNS9wxxBq4i0G6nZSNP5r0pGDLYvvPcTjUT4wW5moaTu1reRP2LbI8tNFg3Zxy0s
	 hB2pCgSRjKzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60672C61D85
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170079349638.9042.18386693739338195025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7446715291cd55ca4fdaf2af447ef47090802cb6989ef6bf36ff3847cc4997
Date: Fri, 24 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700793496
