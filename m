Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190BB13ACF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i37D2sl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 912E6C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704643696;
	bh=kq9g3eW0KKDhRejFJWXhf6CCeSXlIopCuJ25lmNIcjQ=;
	h=To:Subject:From:Date:From;
	b=i37D2sl4x0ShAeHusJfVutXrjS50g9p8xqkIvFQQxsxB8xfaJrgqOVp6m/1G29aF+
	 ZezAthw6MBJimc8w380y0l06pWGCeNlhADu73xD7K9OCAhkeM14S7ooNP1A9ws96FY
	 J8TmWw4xDFgcMZVNLD6/s1NKkn2Th0NrQvETmysZ98vSq3Lmi7Mm8R1HMopUN9TB87
	 dLkwnge809aF+pAP8xpkkJG9XPYAtjlatPknNJ+8iJMrorpgZ1FbmTYZe1/qe65RwB
	 mXITy5fCbE76i/ZXmqCKUVvm0KdXUHmwLqOa5qq9T9wdBgZzYeureAh5XtxYMvbZgd
	 vZ3RhQpVLIS3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7363BC47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170464369643.29178.6766843702968926164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b086d1b59b36a69678a7d8f0a9cbbc39e8150a6040a1c028f2b4d89c9992597f
Date: Sun, 07 Jan 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704643696
