Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AB6367B8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787322034; cv=none; b=Z2nGXmid2OTw0YUd1u8/aS8owmQtDjgc3NwuiFKI5pgIrfhLGw2om/1QAdtcaQs+d7l/APH0gkQ3UdCtPDfTEnMCEBQK7QD/gKc5fwgBdtMBup5iOxVi0eHq41O1ceeEmxbfBCFdP7wQ4GDNDKMRpRgmYzteedQTwsFMXDsLHKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787322034; c=relaxed/simple;
	bh=S+79Mm0uheO9EU0iDqh1WcIT199Hg6tDwUY7VlqR5QE=;
	h=To:Subject:From:Message-Id:Date; b=Z5RJSLPTS2wU1ycX1rMpDx7eaMQY5pTKDpdDWQ1mZuTxIPuqAc9i7WxjmaVBCzEltIlvF6aUFYA9gOqlXWxMD3g2j2c3VIVXIJuBFlJROf/X/05GnrJe+BeZgInvBf4+DHHgaHvH72NKsSAYieqKozubik7rTMMSyS0HJ02O6PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/NTc8EG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/NTc8EG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBF4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787322033;
	bh=S+79Mm0uheO9EU0iDqh1WcIT199Hg6tDwUY7VlqR5QE=;
	h=To:Subject:From:Date:From;
	b=c/NTc8EG94U8+7bG46vTATlLurNQc2y/VksPtAI4snbye/vPaFRRGRXkuq0MzFQ3u
	 wKw1HmF36npSS7oUyiQAtIYzKQ79k5szBGg5oQLdRKYeXhjrMREHCVrV7MUbvI2ijm
	 kylIvbOEWtgTiukfSDDRGbqjtKtzp3FZZnd4YVtIkGPWrnm/ZfjEMya2SxKz9Pvi7y
	 WiJEDbckPElw+yPYmp1EmFo+KgB/qd+n+XfxzW+J/utXQ6fyuf6V17E0cm86z4uVfC
	 JTBWI7/OGGaqyRS2aS+YqeWpFh7iGBdOrRWN64ScRe/wM2HKR9EEc6S4Az6ZfWUyif
	 fRwt5gWgjZG2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF6C5DF93
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732203369.20051.1395960671610098180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1793cff97fd95ef55fa207b4c1e472380d29ce4d54fbfa024a29f0edb09f0d
Date: Fri, 21 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787322033
