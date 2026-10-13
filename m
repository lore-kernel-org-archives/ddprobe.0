Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E90617C203
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791862834; cv=none; b=DLoyE6f8YdY/OwHVaEhxTMzV6mrhaz3eR0OQXxLS8k0UfUvAZoictZgwFKM9IHyVEYPsY32S1AmIw0aOdpnsHo659tcjRfxCKoHQYqe+aywyrr7+rD9E/Vrj02tUIo3acg2ixFc+Xd+LTLTk3AvCw/+WxA55v1jqY2M5RyqmQKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791862834; c=relaxed/simple;
	bh=kFF+vWAY6meabsn0YoYsyZLfgQ6gyC1BntFWcOpUtMw=;
	h=To:Subject:From:Message-Id:Date; b=fdOIO5uKRyhp0pQiSjejSpDCUTW4/98Q0QuGV0d7IT8vlPsqXF4KlWAi8Y9RvaCeaucoHPmWdWkIKJpTxh0J2haeuJx0qL+o/K4/GQcgep2NKo8lzwn1CkfYDVn9ti2dH9jjkqnR/xlmw3VLMuOgko5fN5T2d6xlUQqdVdGoa7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJbSRUBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJbSRUBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB81BC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791862833;
	bh=kFF+vWAY6meabsn0YoYsyZLfgQ6gyC1BntFWcOpUtMw=;
	h=To:Subject:From:Date:From;
	b=tJbSRUBDy2uLg113p8XjNUOo4mBaHdy81eBegZgKEyQ6R0EavcdZ2t5U933YxQH2a
	 kaVzP6bx7ImbLzZBHon6Qy2NPP4sZ/TGMNUUV0eNHwFeMDOPdrF/eaLn8lMzeYvl+v
	 ywTqR/StS+KA+LqoekG/ubgr+4YuDpupzek0AU6ja5ABQDATnqR1pzx8LVvs6jICxW
	 u42dUyOw7hg6tL8Aq5hbvHElcOtvC0ZpOYBaacfjF28K09a+QmTxR3VWZSIZLac3nY
	 0Si80sg+K948CrfoXHd/lQJ4rPkGwaBgVj8Av+xvcNdDJLXKP7RccA3KsHkEMIImoT
	 ZG2arMyx8+8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB5CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186283368.3415.7854127573028600859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c101524fb696213ce3ff994e481be7da10be1e43fc0039ab48eb1c6ef4789552
Date: Tue, 13 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791862833
