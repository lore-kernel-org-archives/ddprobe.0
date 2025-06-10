Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BC6242D74
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749589796; cv=none; b=GjGNBMt89Lh+FtK8i6eyQ6aMsLK06zGbbfvdt01flRNafLM0EfvJ6dnA5n91VhBkRvP2Ic6Q9GDqTqNPqZSRCnnFqz3b6MVgClug6GQEX4P2cv60A8ZQWZszD/oVvwBMc57AljH00Z0MNZHZm70pTcndFKdXLHtuLjvl4QzaOUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749589796; c=relaxed/simple;
	bh=JXmoOVQxvd3P+vdsgEs5Ivh7Ygpa9CWgcKDgvgoOPIg=;
	h=To:Subject:From:Message-Id:Date; b=X0++BFRCCOPHxLiGF1CGMMS4L7BS9P4nUaywISHPddJVIG8IbcqIJOrxebF2KAbnEYissTLE/vnQfTg0aqyECjiyKMGJGoE0Ph5aBQy7aXuaXmTe+gS79MtmArQ6q5emS9Xq0nCZM9EhOQc4vj1jFUBOsMEfj49b+YJ3rHMU1UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGkS19oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGkS19oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F490C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749589793;
	bh=JXmoOVQxvd3P+vdsgEs5Ivh7Ygpa9CWgcKDgvgoOPIg=;
	h=To:Subject:From:Date:From;
	b=TGkS19oRhMsqOuwmUAx0ahaIqIzE8VPlYSMrMudrx4QZabFsSahhdIQ21QAcjqE7/
	 CHcms/ZnhISKLnA93XaoYWwn9O4mrh2WLAQjkGl71a7uQHYPcSwvAKui0ypSTVTPG7
	 slM+Fxz1Fy2CTxmVzvpE5Z3WUW/dm/eImVpLipu+jPGLloqqHCc+wReb0J4J7xKFgi
	 UoEKIoOygoopKgbaZ7CV+1LEfgZSYqF/WG78LklVT6fhwLQU8ZoBh/rS+MZ4sVcd87
	 Zyzm/DebZT1+2GiPF5qeJqlSF5bkN+B9H8fQDrv0KPkna6uh9TQNV+xhcCx5ng8CuQ
	 UiCYI4oaHhVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F747C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958979357.10968.145166621438327706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b9856e412c3cc34a66134fc28324994b26e4b763ce77544fb114ca33553cf2
Date: Tue, 10 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749589793
