Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93D52F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7245CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668886254;
	bh=rhug3vYsMHm7YZiofDtGveX+LSRd10Z/09ZsDaDfr5U=;
	h=To:Subject:From:Date:From;
	b=PMK2biTG6qeAVGL8GK0KqC2ojIC4mL16T5GkbL0YUxv0jnMA9H9afP1x6RYmiWTri
	 pbqCMfn9o/cpZFGhpU2YF2lCrgCZ6JFhmw/lnQuTtSt+8FxBFMRjuefUv5rzZZrigJ
	 6M8Js4KFDkkcxwRpAripnox7L3S9gVurrypr1oYDw15PDHXEvpzBeJkjp64rxaUvzi
	 FmG+VbpDKmIISrUiCzp5Vh8rS3x4BW4onEbmKtDyFMGC3zsBxk454ICYwHPlahr3Gh
	 rjjTsXRtSugD5WRqMM6RVG572neJ2AI+Zh7a6IlRg/9AoxUrhcIk0ffHLX13rIM2Or
	 nZhTbYxneJRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B42C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888625435.14812.6591108894409129080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2646f639afe731214ad8e2139b238d82c7ed34333111ae4c055ba802487b0623
Date: Sat, 19 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668886254
