Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9536AC0
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717948043; cv=none; b=jLsLwxO21tJycT8HHqcRtoDfb36b605Jp4nX4S2ONEpf1QvzuCEUEXJVoGF/xvO82Z2KG1sQMB0IhVQ9E5q0MUI6giUtmvSm4/fsxbW4hhGRkOQqiP+YEPmWucsI5FfJCMqhUAz20iNXqSK/gxf2nBWmB9xw5gm9tK0yc/rSNM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717948043; c=relaxed/simple;
	bh=o5yGiNP98Hf9AS4Qro1cKHXUZ9Dw+dtCMEOsL1yqk7Q=;
	h=To:Subject:From:Message-Id:Date; b=TxQVOFO3TNglQaWS+c3mmvjCX2znmJsZ90LsHXp1rGUXKNqCmfZ/ON7h8wgfaSYsZs7NEbRC6CsDoOo5FY9+9IcaEL4rg03NOkI5KvdtjaHJ/MlY0BCqR1JbShiCAHNKj2dBfjW1uI8mVKiceyCPLX+FcT1xOhJX4dVYpyEAPnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3AcIPXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3AcIPXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E0C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717948042;
	bh=o5yGiNP98Hf9AS4Qro1cKHXUZ9Dw+dtCMEOsL1yqk7Q=;
	h=To:Subject:From:Date:From;
	b=n3AcIPXnPrGPTox1P2yJwzCsLuats9JcQBL8Q3vKDpE77NglRWj1+UhWi4LKXEzX9
	 kosQghU+YGJ5cGV+53PufN7OniBMRRYgYGiWejFtrQtrsbAOHwgY2Yg2a3j7KcZq/b
	 c/AiNgjxWo9skot1qQABzmHylO1AmwPiQkjMDffDgHNVL11TXQoYfgiO9BVnzC/RLN
	 HKJc7gTbdLTYaBzdkF6doy3ABoxzKp8rfety6urZuT3V61sRpAYpJOs9nnYyPNZ32L
	 RcbhGyk/iUgwomimoaL2y03xFLuFWuSn95iHUivi7dQTt4eU+xTCP/MS6VsZ9QfQz+
	 nY0CWZCE5oACQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12FFC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794804275.23129.10851120701390357210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6329b24046e28113b7dae7c3b8aef9d41e32d45c82d11a85407bd9f28e8bd4
Date: Sun, 09 Jun 2024 15:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717948042
