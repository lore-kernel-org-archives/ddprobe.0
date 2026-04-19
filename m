Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B5DF76
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776637054; cv=none; b=BlZiLgP26IRYmbobHuqLcLwhrLyAurKZEQI+gGFQYOotVqkwdmQUKcgsHtc5uB/eKM8zITLBt6Di6ucxPBVd/zR+druhJPkDIDcA+WsOJgYceiH2Pe9qwRZrqkqE6uW5oIZDDThqMG4cvtRiD4+ZK98CW+uf3lovg1nO7xROmFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776637054; c=relaxed/simple;
	bh=WM6AAWhzqVV3j7KAbcZVUyFpdhYsT6QVwVXwEKtrS0M=;
	h=To:Subject:From:Message-Id:Date; b=kL8YGuIpxtyh087LHVQdeHY5tlFUGRv/xpKDUI/Z0/mfjm+oLSkA7x2i2dLXDD1Vb7PNULlX+6QphHjKLhZf+wkY9/UZZnnU7p2af7p3fGsCRWgQbox3e8pl3fWDMv4G3VKGP3Lqu2+GtcMRW/PSj+I6+/ositdQ7v1nFYXIRzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiQG9JxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiQG9JxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB61AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776637053;
	bh=WM6AAWhzqVV3j7KAbcZVUyFpdhYsT6QVwVXwEKtrS0M=;
	h=To:Subject:From:Date:From;
	b=SiQG9JxDNS2L+OXxvdE7f+dNgTr0dqXY1H9ncTxz54ubZ3WvHa76QUqRoHI2Cv40S
	 OM43QIi2ri5RdBpqm1yLkmhtGn0FZAhF1kmtZcfv1wRoNI3ZWgNG7+puIXih06HM6z
	 trPn7/Swq1boomTD+Kg/l1LWFv6zd3WTWkc/1LoKX4toP/FDr3IVSQQPcQ/NW5jyon
	 fYbjW3uFAU1cD6ptAihEAZmHvzwOJR0Ybk8bvHKJEi8hKtHCVfmsUUlAJD55YTyGzH
	 6DRmRjV/sumv6IVxLVoUCaUWsi+lgnt7YHqaEOtl/EIJBzKDuqOeGT4PVeNrfyLQyD
	 /M3JfZq8ioscQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6EAEA71AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663705368.19983.4869453166618687018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2306798428895856dc396de02f8d73f3f3e451da798de3f87ade76b5eae486
Date: Sun, 19 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776637053
