Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369339461
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743535794; cv=none; b=fhCbo8KXQI5e/B9Vkc7GTKWzGbbw5XN25X0BGGiC4gy2cWxvO6TlN0tu8MynLWjb8LgZVcbPfwerzYpB/kp4PGu3VrC3LfFM7cDIL/XJpzlsqkv/75vtsy7I2udIyt56SdAPnNnujEF47JiSt6okVcgFf5EPAf+CsE79vLYGVMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743535794; c=relaxed/simple;
	bh=XYI3v5Btm0ZMtBYfbKBqpyQ6dZa2QhVmGKme7LL8z9A=;
	h=To:Subject:From:Message-Id:Date; b=tYhGJ7lTtVRfiloFU9bEE/X8K78b600dtinthQGPFxFyVMwZXafu9gLNRft7s/OEZsXBNYra2nmlzD8p/7uR5mcIdE1RyxdeEoVLRBhApgKQ7t+YeP5ZdCGGQswPqGmMO0FYf9fKTi53Lqif+kFAkasQ97hFfZnb8saFPdXHy6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5REptEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5REptEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3731C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743535793;
	bh=XYI3v5Btm0ZMtBYfbKBqpyQ6dZa2QhVmGKme7LL8z9A=;
	h=To:Subject:From:Date:From;
	b=n5REptEap0AryTM5D5XpuusoB2Cz89VJ59Liy0S5H04wAakOmUzQjA7hQ492HLQRh
	 uHeLmo6smoNcwvz0S0qd3L888Oqx+GbzCmUKlYh/3q+HEF3SPOlhea4EBSBDPmt8k9
	 DnDONWGg9n790N581ra83SSV9l3NyYwm+YeA240J3VlW2+N25+KDsUg3nEaRQhrny1
	 sEkzKV5HPeHDLsjOM2XAtsxX/KF1HDF4QbIBeMvIV0dTw85Huga/H4PYzC89g28lFN
	 haZ5AxVvzHNmu6QzHOQNDX6lfyXqb+hO7sotzARgnS0fzOAQwZnaZBnmcV0ZCyWh9p
	 esD1ZPhuuPpSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14A7C36017
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353579364.18377.9595973707132848855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59daf403883eb959dcc6e6830821f07e0fec55674a8bd504932b85e3390b080
Date: Tue, 01 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743535793
