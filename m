Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3509C1E0DF2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735742754; cv=none; b=XexU/4eBNlgMEEsAVIJmn7ygoW7Ws1cAC29TO078Bk+4O2WLPsA0jwSEdY6K9MMPrurn/fvwRsXIzuTSoOAG84QMNz2mCQWVZRTVs8oMiJsPX7gEL6YglhKWLqUAAS36z33BqOQldurDaz0XGAKIMfaFz3paXI+OWh2O6qPFMTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735742754; c=relaxed/simple;
	bh=BSGWNdhDkCcQoX0Ii5u8YqZbF2kqnU2rg1+2BLNKffc=;
	h=To:Subject:From:Message-Id:Date; b=TB2RIUfq22oqJ48tKT8QoI8t2QvW2leUwLXCfbhrKbJnqIQJWTKBPfvdRyhYz4xGZoiM+m9dvdaRRc7LqTG5dlSkfN1vAwQMXnkPD0Wl6dcgSxr3s5RCAJTlXr9UAnRRJDDDApWmT5yH7hKpfBl6o4gIdRClf2TuqVUB69DGg5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXc8ezOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXc8ezOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7E0C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735742753;
	bh=BSGWNdhDkCcQoX0Ii5u8YqZbF2kqnU2rg1+2BLNKffc=;
	h=To:Subject:From:Date:From;
	b=kXc8ezOetbgTNeM6noA8gBmqGo2d9ruRUOZHoQ6O2DkG+s8D2bWuRa9aWMmUp+lAm
	 XiRrZXNeZ/3EFlC0KrIxFlTunals0R3B79NDBO2nmwwIWJcFT5VYXUxaX63ALwkmsl
	 MPfi0PFIXWCsX35rPx/DqZjBw+xhN9KnSOfOpIjUO421rutodegaKABgmuEN/jybJu
	 2DtJVwDS42YQji04MlrrpNQ54908QoKWiJe/KqpPpgPK/ovhN8PnKgnOSkq1z0Xyoy
	 zZCNEs/6KKqED30/imrmP53B8xeOjOMNdXITfvl6tjpueyPf0HG6K8G5FaMrxhjJ0U
	 deuYRQazTsdrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D69E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574275360.8171.6882473873952854352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd8ab543365323b335fa8d019561a80dfd6d14fb6edfe25badc06a816f4a645
Date: Wed, 01 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735742753
