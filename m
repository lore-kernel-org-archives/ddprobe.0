Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5C131AF2D
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779565954; cv=none; b=j1flwdxI/ZYLG5NZGYKbxRDw7mDPQsG+OW/E/Emicvn2/u0FOxqFgwdsmoqqIyU3Buw9SXb2bno76d4FD6y4ELm9ShR9H9J+xQUoCFtunm4RJw3Sd3S1W84yakjYC8nzV8uaRM3KQUiXWa0Xth8hNqZhYA/FZFEweZiNhA6SEDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779565954; c=relaxed/simple;
	bh=yiLD7a55CHH9TuyWxmcv6dU/vN/KIzjanxWLOP1tzxE=;
	h=To:Subject:From:Message-Id:Date; b=DQKwO1IsMUCLyBW5eRbJ929OMzudZXR/M6vt5n2nw9EUCmhYp3fOhb8WHSM31ocjc9zyDaTYfy/8X9p22m3Y5uUcd9u4ThoEJ8B4XFy+DBf+rWTKSaZFp9750XOZet+XRQFEwDsU4MyxSj6HAI0E52A+5LdFMkbrIsty+HlprsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKUXeI5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKUXeI5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F04C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779565953;
	bh=yiLD7a55CHH9TuyWxmcv6dU/vN/KIzjanxWLOP1tzxE=;
	h=To:Subject:From:Date:From;
	b=qKUXeI5qsepSNQj9Wtf6/aPtHIvHTwsGuFEEmR0dBfeQX/MErCAL6c9MiC6G+kAAq
	 6Qjk0ic3UN6xXv/okp4SgR+dkzUaT77jbpLV1WqJirmy88kG4qnXymSpXCpt6tpxeJ
	 72lLavIs1fC3f/veXL4OxG/dD4WqDy0PTX6JERbV4wXM5BfT4Pmy46VZleerUm4krx
	 bY01qXcLEOslDQlm0XhXniN52v7rnQpB5evV9GgKX/AgZILwN9YapsuiRMFUYYrRVD
	 beorA119+2yRTUN9LdRa0wPvU4uUxNUAo2Ig9sSWTqkFxdg9Mdlqp8cEN1/EyBmi2s
	 gxMdkCB5vXh4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB2CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956595368.22558.6643380096494675936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4870e690c7306bbfd4304b51c670c892cc17f47d620c31dc1b70197ff665a81
Date: Sat, 23 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779565953
