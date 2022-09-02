Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA24410F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7167CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662098453;
	bh=z+akLRasZ/IW2sW/Ejl6HRh/e/gDhpvqFTC2NcA+lt4=;
	h=To:Subject:From:Date:From;
	b=iFP2RIAs0F4qfZ+ykFZZts5NGC6vHC70NTzVmX11jTGIA6vDOaCfHFWb23+Gjruc2
	 QcPfQl3NpurAF+H4/TMFQ5CWXJM+VrFZLr1ggMu9dyEZvlBtlrgl7bwliOcSbLnlrf
	 E7CLmaEs2zGen6A9Y5AaBj9aHsI+qxXiMA0wmyDSE6pQVkGVmGHqx0V2XJmnrMgvaw
	 tGIk6t+PY328bfbEAKFt6OH38flf2VfDWBiW1p95PTT4zdw3cW6ObwlgWPDyb8/m2T
	 mj31AHlHQYW6n+Hyac7bmkZbXyAClmKr5rM7OJ3H2hLVIb+1uIaeKHWw6+j3So/pcs
	 TR+WlDwzUMzsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BE7C6FA81
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209845333.25848.17531865591872781378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b488d7e3d9eab0163286d3983fcef9cd5ad1899c878b250623d9c94f01b87e3
Date: Fri, 02 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662098453
