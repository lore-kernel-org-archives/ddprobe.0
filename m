Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E45376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736ADC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670375454;
	bh=OKzfnDCkaNwWdAmpdTljIgU64Ca2fg/JvYqUuHsBeHA=;
	h=To:Subject:From:Date:From;
	b=jR1oygj5zHvIuASogeBVHz7B3ppDMUoeAOcDGbnMXPqCpSatbWlLDSAgJRgNvou2w
	 J2/haKfhL2MhyCc7pVdu0KzVe4sQpLlGgeYMxzXAxS56HxO0A9gxUvmhmfg9PvdHLg
	 Q6AYVuA2JUOfmqueRaTXWwpeChPN3DSbcdTEvyY+4s5ZMl0XgAYJpv8izhiZ42eiiF
	 7M6wLtUig4qmMvH3P5QgowyrarEW5HJ1jrY0Y1fGP7PFvdxtkwIZH2R6mokyY7UIMh
	 GICjhvSe6JkLZJ5xWPGRHJ6FS9GVsuIgb4VxFxDDXYC0DUNz4Upfu760rhjCxdm3wu
	 DhniLHGIWHvoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A6CC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037545433.30526.5333961199209027472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfa059d1791e705f2f7fc8230647d742b7dbdec75924c12086aff1293b1b276
Date: Wed, 07 Dec 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670375454
