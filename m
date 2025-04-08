Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590E223A58D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744132794; cv=none; b=c/lHkVuukK+v+TIRJ7gCgQjdWwnhbKw/BZR52W0pLIj25v362QBIu//cI2FpuGbG+9WKlVmERyhWGPXQd8XaUvw/bdj+dGPDOlKfRfaqwgqXFBmGghnNle9pMeJr2IgfOpB+7Wm545NFUyfqWcur5NPAKArTKIpun/6Ux2TFEXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744132794; c=relaxed/simple;
	bh=JVlz7iWuElcSOnN4CR4PGfTrORpT+cqGW7S/VRrQ7pI=;
	h=To:Subject:From:Message-Id:Date; b=A3ehTXRRuKNGiJlL4tgyHyZbQcsN62kwPbcT5xastzPGPiqbvWvGIns6m/FQYX+BG+zIPgMPcyspBMnISR7haEoGf2eqI1Jykp00yQmmXFF3IiWzEw2Lfvht4UToVZggJzeIYevyKStdmdnPUGtp8MhzH4aX4t36UBUyGfrObQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9h1XmIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9h1XmIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FD1C4CEEC
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744132793;
	bh=JVlz7iWuElcSOnN4CR4PGfTrORpT+cqGW7S/VRrQ7pI=;
	h=To:Subject:From:Date:From;
	b=U9h1XmIXfnqZ9dFRJ8ZXF3irg/xgSl8ZZ5Gb+X8QUdIofzQ3DxbK55iqNxDpWbDr1
	 7sernFLRTvi6iQ30lfP0eQxfSqpyHngGe5BS/i3PGfCb1/Mxh+FrQjl3l2KI6icB67
	 LhtfzP4GZIYOySrZLJvtztYFfnGPXa8TE/lxLbP79juSRx+1bHuQkywZ7dlr/K4z27
	 QOmD4vYgA9JCU4vNPtvip7z/DvlXdcDucyiqCmcUeI5U8Tqca4qaae1qn47v2BgCau
	 Jyd+l08t58P/5f9bPshTOWcZ/a7MishA3HQsMB49DMsigFhU4+gonFjA4KldtVKM+o
	 xjJcyqwz+H5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22FAC369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413279365.18733.5495831760182949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4309fc7d3b260ab8446bdac678ee9b81095c859a8ae269da1623811bc86e60
Date: Tue, 08 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744132793
