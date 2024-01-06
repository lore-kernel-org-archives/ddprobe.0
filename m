Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07948F4F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0H0WKkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8171AC433CA
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704575296;
	bh=cyPD6IF09AKqgcRyDGDDGe0DkgGq/Vjz4lRqMbVZFeI=;
	h=To:Subject:From:Date:From;
	b=u0H0WKkErn2su969jGp9q/ast8Tl/3JoXzTVjOp0iZuJ/OvKkcoBfyHY+GtAISnEs
	 5TjjWbiDl4EWR+pKA0opi5JV2vieWKRJ2jWzCKerEZPCu3RQIT1iGFfIz91PYxs+hy
	 1DBYMhhiQHCcYliZWIExNA1orQsmPO0di4qwrgUqW47t4P/5Uw1hkLh/59/jsWlZuK
	 hI7uG8Bnoml/TlA2OTUupAcHfHpsWvgDw9JxSqVNOJ7ORYzqqSwHLVTOzTU+59lZeD
	 SIVSvhPACTF1zHphJ7d3wPh7uE+5lO9QZ+1wkPvpdDftxa79zGaGem/kpHEISVXQs/
	 xqB0gF3o2Icaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633A3C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457529639.2517.6266956818354086872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65f5fa913ddebb3b943328f6a555e578ce080ff2e7a4e45aaadecac92f2d1fc
Date: Sat, 06 Jan 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704575296
