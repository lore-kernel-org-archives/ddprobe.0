Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BBB37FF74
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777984654; cv=none; b=YB/TXLih4SUXeIh4FtSn1M9CL8WD669lHlpsO3BYAt8e74e2UMYkx73EdJ6LzSC5zvdSdvE9og4hJiEUxI38tIjHh2nFiprw6I4uUpdlp6fnVjxz+DYH/hxK+HXR1SUDeV1nqRCFwt2VWFW82js2cup3KIxYcIqtxMQc4WTNMZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777984654; c=relaxed/simple;
	bh=IsDQFq7Ql1UR6tzZgnaE+oZZUv/UipkIcyJ+JuLmmCU=;
	h=To:Subject:From:Message-Id:Date; b=B8coQW9FIlCmj9OCgkQ6P1bO0kM6R6GTX8RutcUOiP3IOmNTde+U6hNL+MEJCIYpSSbiie53C+wliPnZt2DWvuYvXB4bFAMZMHDdcM11CFc2sn7hChFZgujh82dE+UrwS+kWuFPnXCMF+kpNigJkcD16tscjXmIUnM5ugWifHsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAz4bUBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAz4bUBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DD7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777984653;
	bh=IsDQFq7Ql1UR6tzZgnaE+oZZUv/UipkIcyJ+JuLmmCU=;
	h=To:Subject:From:Date:From;
	b=uAz4bUBKgVvF6JWNXNP3LPxmz+Qj6zbI3cNcpioYt3K+/xGigZzbP2HErCztA2lf9
	 NkzWD32AU2qfLqe2oZnjLf645QMZfNGH2zJsY5vH5k2MOqz6Qe9AR590WzEYxg2th+
	 mWUmmzmupQi/yrsho/Wm1TKBbJBlL4hH4lLw2pn0PUS6IAOQanqEW4av/HM7Hm4b4K
	 tKlBwG9auhOKkme0OlIsRoI4R1unBJlTB2svOjIB49fgLxQ/vq75oYj6+3WorLcCrD
	 zCJCSeXTcTM85RPUNma3xeI2Cx+4raoJYEV74doeJeQRJ/INe9ZfHbIoCA1dG4pyUZ
	 KD5B3lXl08zRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D0FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798465368.6298.17013824299085054073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a88300feebfb7430b3c26106d41215609f8ffb08f38b4784d667e8f54f20d3b
Date: Tue, 05 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777984653
