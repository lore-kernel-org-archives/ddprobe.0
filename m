Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68379368D4B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784878234; cv=none; b=kjahuVizX4Ra2+4KRGQJmBtXMKQ7BHgf1fLOlwrMbFSPxtl39/l8dvL7+igS4VxKArbOQsYwNpCgYZSHS75kGEYfV2raxq2jiKjsPc5ilNOh4lA8XjnwWVMTDcfdORKTp0oL6+nU+TbJYwCcY97t0H9yZDv2M87V4bOuoSeEdys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784878234; c=relaxed/simple;
	bh=+R/owYg7bJ1VX3MYIiNKX1U0QWIkVfouMbkepg/z5vI=;
	h=To:Subject:From:Message-Id:Date; b=VdX56Bu4GiNVpI+TIQqmwl0p0/umTXffcvW7mHAj/VROVAkqUdjCd2xX585PnhZRVuRaQ5LNv9mK4K+FozHYWG+IhwH1AEo/OSJhELqX6s1cZ21l8iYV9j1Efftu3saMI5NAkXOi/cA7o7foXfXkLpjfrq2WKSVA9JJN4ry9XRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYDv7xfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYDv7xfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04ADEC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784878234;
	bh=+R/owYg7bJ1VX3MYIiNKX1U0QWIkVfouMbkepg/z5vI=;
	h=To:Subject:From:Date:From;
	b=XYDv7xfGV+DBPkKBad+B8jkP/1JcwKqAF7Dah+WWnHhqiYfs7xZZPS/cT+HpXGHwI
	 y+p1SJMlcfyTjJK2jiYagS4lvQIwPe/vxobo1BbrY5y41BclCUaj5F6iui3EQfO4n8
	 moWv8f45ZhvwhTw40yuRVMIVGQJOeanGBX3dQG4SOOzPbr1ovtLqFXirwAsIoE5ua9
	 aI75ZtuvAQxhjHEKFGdSoLRqbFMBYmoOw+rHL+WRaItaEm7KneuMekpWjSCUjg54dU
	 Kw4cOe51PY0w6JZiocaeFcBoxZ34HbOax46vFRkKq9YkVqNCfIhdHly7nLk6GAAghh
	 p+v5xRRqA2dFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBF5C53209
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487823376.29980.11920478514197350282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719c97545c18e3c7daca5bc0f86413fd415d7221cff4a41f742b14557ccc7f27
Date: Fri, 24 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784878233
