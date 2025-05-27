Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6F1F7569
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748328594; cv=none; b=Lotb5Oh4tIgDXGcGwQPvQDzcEMv+wQZDWI+rY0FpfMffBN+SERf73f4JSQsqz+aJPv/yxnJLMzO9qFFS6hoOuZ/5losNQ2KJmhzRa0617ewMoWty2X9ozvYDCczzDm/JIaZGnbpiOeh8S3OllWjEP4+NOg3laIx3dZ9yg5yvL3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748328594; c=relaxed/simple;
	bh=Odf/wro40p7k7LNW5wf8BA5f6wdW+YBTlGXQK1cpj2I=;
	h=To:Subject:From:Message-Id:Date; b=p6xkGHT4BalifTqoxgNRIi69y5ZpO00MbXWy3uw/y5jU8s1hYPd2sg2ZVnvYAdaN3Ud+gsw0cufeUWZN+btXPfJatYusmL1JSagcDA9CtFtYYSSvY2S5F8qvDL2ce4wqLKjYUxx3sfLNJsTiLgPPHBAk+nWzZDBCzGmVSDV42hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh18EW3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh18EW3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC60C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748328593;
	bh=Odf/wro40p7k7LNW5wf8BA5f6wdW+YBTlGXQK1cpj2I=;
	h=To:Subject:From:Date:From;
	b=Lh18EW3FglVKeedOCkG5J/usVgyLP8tigvWSthVfPnCnlu5oat0Jax8QLVmIgyBHi
	 1ARN4gecp+Z3ZCFP+JJPl6wo+dHR1+0MfSxgkV8MbPE2+6G85KlAbJC6N3JVYP8jml
	 M288QKSs9hmB4bwDatekzlsuIR8C/cyQJ7+jedC3nSm/JdDS3NB/767a2/QIdy5oV9
	 3xI913a5vMH7qPs6xVnk6JxzKQu2YnigzeQKQQkITZJgC5wCSTNQb3/Z3AAW3S9M6I
	 FT7pXMPaVCiQ818nxK67LmSc7Kwo7PAaNpnKVASRQnKOGmthtCUIkuUUWrr7mXjx+y
	 HHqF2wrwuWAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09EC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832859357.32004.12091377048935131192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3202bc5414c64908f46964ad8f4ffec5e20f941cf43e2502efbb51c96a1c731a
Date: Tue, 27 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748328593
