Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A62918D3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745519994; cv=none; b=u1U4hEE2oPNQ9s/KU+J4vN7T+uF7P/Hy2vMtpzULgptiCI8euGN+WzWkqWxCVqDdekBsHShGYiOnepNXzi92HTYbuVMWf0uoElyhxbsp3HXzk5Xp5o2OIL2c0/CjLxKKMlqCUmon28LZQrA3NRu7E/gi/IpKW9U56iEuwhWoViQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745519994; c=relaxed/simple;
	bh=WLQlFRObcLFiDNyibFN7VSjLqju/kCSWkGhC/zvsulc=;
	h=To:Subject:From:Message-Id:Date; b=RBCznNSqfrGdzV+XfV6f6Ab4w7e6Y6+5eBi78vYS39ty3Fw59CizH/EvBPDVsDeqCoPqG1EsV4o9jkPfkASDUhSHUq7tzMDtKjM/tljvzj/acmDbZWcZv5RC9AdWO0x3CcknLrZf1qc0C4ipiEWc/s8Nump0ysD52bYBK6dGnR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2xBaZoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2xBaZoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7B0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745519993;
	bh=WLQlFRObcLFiDNyibFN7VSjLqju/kCSWkGhC/zvsulc=;
	h=To:Subject:From:Date:From;
	b=T2xBaZoYIFcm4jwq1GY7vh+B6KGt4+JZbwV+pqEhAK1e6KlBrghtJISquBn4sYzsT
	 O4N/p5XWctywuz4dVreIF2+J0OnMNghSSfwXL/nS4/8qyfQNdkuSJk2D3ZcuWT1Pwz
	 cCBYqDuwEQGFcLOHyKZgxlbtG9MISKV+5SOjdgQgCOioZMeMt2+0QBtjNpN2Be8b2P
	 tjATRBt7N4Thc9vllTtFaCKtBbeoXZaZwMOGIJw89FcS1l+szGeWTHB//4Y/xxwd84
	 FG198BAxPHQUHvQGZwfsQYCAeYZiZxKxTwkSqIwMHwfpuVtdwZNu4335e0ENC1dC21
	 ZGaC4wHRGNe6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E4C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551999357.23117.7091271839729611157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4306d019e1370ebda643b564674a84755d4c8a442263d789a3508349ac55030c
Date: Thu, 24 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745519993
