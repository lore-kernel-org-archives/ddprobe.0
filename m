Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A54D633
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9lycSus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B1FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700525896;
	bh=mtoX5QuxZLX4hsWK6CRV9f0D1Uppdl++92X+6j7gwNY=;
	h=To:Subject:From:Date:From;
	b=V9lycSusPYuhAhjpg4aoQRjtbIWMl+AEWhlGN+Jfv4/b5Zl4XGnds3JHPinWzdUiE
	 xfw6CJPL2yPZAOsBb/hngP4rBiP/VdfPspPozZG+/yLkNGQ8O03bpElmqVs8WQ8Slb
	 V1EZPAI/2t7nScNV2IWwTdoKsYy3PUZs9xhxnQhKidLvaTL43u97+lHVB4wO7hjVxE
	 EVw2YEOCGPNpyanf7LF8eYhEJX/yxNMkWc9K/IVPU46SPN+eVnq2AM6WVgTlWZV8PL
	 s0aLKPdy/f+GV1yD+WcomBNDaThQcT3u9EGJCERDwf9bZP/mF4eUd0+yz1DI+AiCN+
	 sK3nPrafkxR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A20C2BB3F
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170052589639.18699.902612417615367137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb45bd2716efd9fd26493e7ca9a1210b06e87c91cbdc60ad950db50e2732185e
Date: Tue, 21 Nov 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700525896
