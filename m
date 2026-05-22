Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F713AD52E
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779461555; cv=none; b=a4RA88ooQrDCNwYGYeOrr5WNHXyEyiU3ZQBzL9LThXu17qNJJDIoRrdg3OX8eTxzxVUH/Y9TxeUorM12Pizyzj9wRIOJSlrXxrTkfGHDy+VxZmE9KcDPUdxtb3X4L/MAdwZ6KMLHd8gGCMEib24psRdiCA1Kmn3nmY4Tejl9vio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779461555; c=relaxed/simple;
	bh=oQVw43RI3G88as06i0j8oAMiGRL3riHOIGCgryJSuH0=;
	h=To:Subject:From:Message-Id:Date; b=bavoAYR6YBukDGZIdpViOXp4Huveht1ntMrsQLuScIEtK19O6nVm+C+Mhb1625QyP8Rs3/EGUpUAi7hviSe+Ch1pRG14CQtsDqL/NVNgQ6+gBVO+aSiWuMW+0f3n6ohqiPckNq7eWxRXPHaXi+U+MnfQ0U1zLRsmVVnRfV51pkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSveRY28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSveRY28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BE5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779461553;
	bh=oQVw43RI3G88as06i0j8oAMiGRL3riHOIGCgryJSuH0=;
	h=To:Subject:From:Date:From;
	b=OSveRY28iWfcCIpLf/7eHJzS59hvfDKylgCn3LUcFdgpG8yBYFqQeX2gcw55bJUJp
	 hm/LbJvA+dcNAgXd/6i2SnimL4LRlSgvzFeptr/FEyH+sDcI7rFqvF01bMKnzD8EE5
	 vCRHwz13uJ6IgvsahE+BGpWdOXPLpXquVY+8r/jroCkw9GZpDedUsdv0yvUUwOdr1d
	 pfgyomLTTT5kwPcLl7fdvpRU0VbO4PF9JYyDu84U/c9Fe3EZGRlXNXcGq/G6MMR33Z
	 AaoQsRaoDzKJOazW2gJz8nGK9hQ8GM9MZfPiJIh6K7TaI39T+NjW7skV8a4b6/5fmA
	 nba1pCj+JPBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD05CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946155368.26376.16412316893290109083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b681999c913e96d5c1d59569db68bf3810beacb32467a3e5cef4609101d52e9
Date: Fri, 22 May 2026 14:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779461553
