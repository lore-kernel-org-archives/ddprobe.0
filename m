Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090A350250
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY7MXN6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9BBC433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701210496;
	bh=AFL/zbjDch4OG+LfEYRwRoTiszIXCaZ62aJM8YnpYkk=;
	h=To:Subject:From:Date:From;
	b=TY7MXN6rvm5mp+K6Mwtqdgu29ta7bHIxcSXkKo/vP2cnd19HzSsB/V1E1XhhOOZjW
	 5a/h7GBNlKBtIFUvBvWkKXTk2c2kywkaNOWSLyGWwwXm2qsiS2lRmMKLAGjbLkMC+O
	 auSnS2j7Ds9VklRBBlB2G1IXVfuwK82DkjMlvLa4rUGqVlNrr5rxstcP4hHMjE6UFu
	 d3iTPWUi0u6cx+orpcYkr/irrmkxxnrzWJSvvtWCiE9Vme2/RZgQH73SR9yZxiyTy5
	 Xi4Q4IV1Mx76E2TN1AxwKMIQ0SX3dJL/gqZHcgn6Gixp98U8tprj3SbqugId3/9Pxs
	 n2RnaRwl2rCWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6292FC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170121049637.7532.18312054145873915744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1d79a74aa7922f0d633ade066faf6956300838887a277c63905dbe9fe4aa6c
Date: Tue, 28 Nov 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701210496
