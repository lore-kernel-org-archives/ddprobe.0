Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211BC1D5CD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759262994; cv=none; b=SBPx+MViawJqfEqkm9xC1AnhwAgLJttqS4gqaq5l36tVVOBSJQWp6xSESBtNf8j98Y4dBfGvj55+Y0FMCr9L8gkWav2cl2wlpvBxZI4eTg+ShuBSUIvzundNFOO6LS5c0Q2BM7t4RzGt2KUQTih0Zixcq2jA6QaY6k3e/AlbniE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759262994; c=relaxed/simple;
	bh=nqgS4jlrb8a/BGQ9qKFyfbGSizOgKfZzoIQvXlWDl3s=;
	h=To:Subject:From:Message-Id:Date; b=epL9A66YaTcG0WZ5j9N++Vf69DZEfZQDRZrEvBTM3SKpqj4jTF46Fw25BTQgg5P1obuKhTVMcQZxtC4opcGqZN6vRybH79X5bde1VrT9F/HzUhOPwwangS/Xf+sb3TB7uQRQVjMgv7SoyyKPSJiCh+gZnIpnJff7LxtDHyVG53w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKDIUhXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKDIUhXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE68AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759262993;
	bh=nqgS4jlrb8a/BGQ9qKFyfbGSizOgKfZzoIQvXlWDl3s=;
	h=To:Subject:From:Date:From;
	b=UKDIUhXfrrnY0v7AKiZy9yQKePzD8WS/KlQ/gA/Nyp1Y782q3p3ZZPNUtt61jJ+VZ
	 Q5FnGukJjNBGfiREsQ+s78n6awYdTbk8Q/98H4qiEc+jPZB5zlVryvT8vvlBK7qs6q
	 /1xbaFPvmWoOgsJXvHMb86nkGbJzuJQEDAIBVgWjK1FsJ/d/KbohJtj4yqGqAG1Ijc
	 2zrlIvj2LtgnL5BhxTaVilLvv4JDsLMiIRQtfBgBaAX7juwyo/9uyhIJRYHWC0SWEM
	 1vOZhIK7LEOj+7V1dhHoS9Lpei6UPQk+YTtxWDARkKUjZVWMPUFwwpACdfV9KR1910
	 T4tBBD/tZ7NyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93173CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926299358.26789.9429735095353053920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7eb5807454f32dde8923637c613f85f5eb7cd43fd9716c5212d91152114878a
Date: Tue, 30 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759262993
