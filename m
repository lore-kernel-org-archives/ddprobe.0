Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A841F3BAE
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754674794; cv=none; b=nl1jLQiwygoIS7IkJvI1FI42orrxQySt74v3QFpBPJIRh6n1v4z2kvRQr5UjC5weXD8ceYuU5qXNPgADDQWWuxVdd37KzuMnDVM3Yw6igwMaaQ9EqDueT9ThFXyopZcv8YYqfZuLWT/jHEiyGJ8haHubsDxLFOOB8x8/5cu/lgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754674794; c=relaxed/simple;
	bh=ui1h5x0xcwakoYQhlGFXbclqHKjm5rFbvNf8Wf0E38k=;
	h=To:Subject:From:Message-Id:Date; b=OBfF4Obck1PeEXEAFP96l3IZ+CEw4/bsB8/fo+0f6c0qiAD5fRRoE8aoWdlQzjp4ag9gip5ZwaKjDufFta4iOWrTzpgl5PEt9q5XTbVwMXK0bpCdScuN3C83s95G0jtpq6yBCnUPbHpAg5g2cucECO+NbjNuruQhlL+oNPYMRuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW2eriEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW2eriEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2164C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754674793;
	bh=ui1h5x0xcwakoYQhlGFXbclqHKjm5rFbvNf8Wf0E38k=;
	h=To:Subject:From:Date:From;
	b=MW2eriEnz4s770WBjanelTrsGfcpRPCAGSPYoSNnAZgG+f9/7ITjMBZsVvUNRbUO4
	 Kw/D3N/tCqmheP/YA6XXcKkXHVza5X+F7YVTpnXHpzyFuNqJfYc1d/Vn+FfhSc1Nce
	 nfYF9vdeq/OSMX7NmGSFecibM+k8tOej1kP/Rp7mp29R6ql5O9+npJLrJkE3NCwOxn
	 +2VgZcCfXGYQoLAL3cm7AvHv8woDlhxlBt3UlsQR3khm8ycuCu1RKPI8hzjwTOiB1V
	 nBgREMCFRd17JdVdWGHOfJXHw5ewOT9LZGfhg3zSF3sw8nwT3v/zXbodYCZ8QQb81L
	 czrytd8VJFJxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A6C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467479358.10482.8023241092695869758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ae3eaa28daf258973e65b30c83f264468603dd3aa93f8d10669e76455435bb
Date: Fri, 08 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754674793
