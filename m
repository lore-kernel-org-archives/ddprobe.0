Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA2D2F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 20:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 140A2C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 20:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680985266;
	bh=Dzspf1HMPXA+tAEOcdJl/sjo8Wf5WLEa7KrfvwY9lNQ=;
	h=To:Subject:From:Date:From;
	b=mQ4dU32HzBmaf5GaPGp72CitJTtUamGtzu1y56SNKOwubDzdI24czXx5SjaAcpOzJ
	 gFP6mGdNQ0W4Kw42S6BBhbpeaISw+9cVfZZSCIYAvTKLmzD8EjWuDzRVV6/bZeO1cn
	 pBtZpgM6lzK1/r1l/LqOQ0zrLoUDiHAx9CuvQqW51wxsVlBeDkEccuvFJYagLS3w8I
	 hWx1f87iZelDqJ2wKI55mmc+3Z96eBgJUYXqdKlFXRVxc2OxP+B2xGDvwZrCz5089e
	 I/I4M37AgNnan9jYRlAd0/OSLQ0/uUhr607TM9l3Jc76/0bIABWFnZL7Rn24T2Mye6
	 yReyhrpXSHvGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE533C77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 20:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168098526584.3889.12535912092923072899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5667eae7c4a9e80ff4c48b565f0dd6100af8132c0199df9d3ff63060318be557
Date: Sat, 08 Apr 2023 20:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680985265
