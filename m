Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087E3A28
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 06:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C209CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693290848;
	bh=7ZstshFnTMKDuXdyq4xjMbqgKa9DphWw8Ddm1qorvo4=;
	h=To:Subject:From:Date:From;
	b=rho9nS6cd4lnxnvTCVadCK6e8XRBtv5ylHODuzzRE/RgzRCPaQSyDl5CHk3kJhZME
	 elIwT5wmybWRE5crr7l6xRHxqOpdiEESYL1ros+y9lHtcg2xXsUf2Jvy7ONkwRdw4l
	 GlxlZAwJAEalg6CIkIqnm+9wLjDKHgq/N4rwLSmo6JMY91fLi+/SmBSZgo2nxr/bF5
	 VSFKEQoKRVuVIOCUtCWyZBmiAbYyZcqVvWcZxJ4JCuVK4FlVZF9rlVAZUzTPo5HIHh
	 owEvKm9UFmN+p/Y2+4QZK9+WCNZWJk+FtSsbCVibD3MGI0aDahHBs0JTgM9AQ0Dl4p
	 l+qQE57KIwbcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F00C83F14
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169329084866.21629.15840207340202621437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79db08c128be7e5c165c536dcff3ac7c9cb85d54567fbcd9c6eaf7e754e91e64
Date: Tue, 29 Aug 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693290848
