Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610AF286B1
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 11:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D049DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695899768;
	bh=Dom8TwECQhb/fhJg1//rVL7mbIk+sFTiPhiHuurGDoE=;
	h=To:Subject:From:Date:From;
	b=RlcIdsJUTYQR9dKx8xDFACNVFrHGZqDrr9/W0Z1w/SdWRA4IinajkMTBOl8wkS/oX
	 0fW34j1W94bsFhIMxoFZ3jRDcUo2XD9vFmwQ4fDp6zw7SDygMc1K1hgwD1qZx0cgh4
	 BQYTHY27JvvHwJcpmrffeAhhmgmcr2baJgyjxI72u7aDMcfelka3MUJ7FBPJBsnRn2
	 GJpANocCb6CUxcJjsc+QbLYWXWxf0k1OesuDLOvr2/V7oHZl38lN32rPNidG6SOMkH
	 m7q1wyhTYjm0IJYdnJ2DFfTg9iZrq+VYzDUujDibqGg81OqOYBWk8UhU4HrIUJ4J32
	 KmvhSaddZB7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF61DE732C0
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 11:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169589976870.21638.301465724824919794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfb1ba25ad747f9365322f89215ca9c36c441882c80a9a2d3ddf2a4d112e1d8
Date: Thu, 28 Sep 2023 11:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695899768
