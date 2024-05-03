Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06963CF
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714764743; cv=none; b=ZugZ1kjef2Fd0SlpR/jyJ1t9E+mLuODFunBEXjb+P5mFMBPscPO/robswwTi1KSfjVLhYZBs+wUtcMane42YsH2la/ByRjfy9ZMEROcG0L+MN7Ov3TbspeWOnpMPCNr2DseBnO8mwJdlEMJnmt1ofgYkvXfx0S4PyEVctLGf2fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714764743; c=relaxed/simple;
	bh=I6BrPlOkSdh7YrKAQ1LL+W+5M/GLpQH6w08EpGCyla0=;
	h=To:Subject:From:Message-Id:Date; b=IWtBjF2jq+ssOkqaNHgTk4ec57hXKgv5khNQBnSaMsUvzJvMkXOgzEXLeQtlkN0u5cwADJ6XbGxogc8698Ux/UG/AvN/djzOc5k6ck9gTw1GaZ/KB1vX5VLhT7DiO8HWuRXtAm+JKFgWNWqQ7UVdMxUHSys7oQcpb9kxUV7wCzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IURnngQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IURnngQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBF4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714764742;
	bh=I6BrPlOkSdh7YrKAQ1LL+W+5M/GLpQH6w08EpGCyla0=;
	h=To:Subject:From:Date:From;
	b=IURnngQIR+QbVPMPSYf+/Amboqs2BYbvJTDwrIQFefbX/LGpuy8jK1RjR8hpF9RyE
	 J4nOCYFH8e0oEBY1RVBheeW74Gw6YiwJwWWWViLZO9SJzMjKGYZ0FhWI6AIpnbsPm1
	 HkG+VMGcSxAwwVwJjBrheOZru+NWfu0Wnl40KnAioEU4+dtEuKXRx4e3kaCkRlLm8b
	 eG6yOtRw5tXW5zzQ9LDD5azGk3Gvsx1SqyThu+oGWM6h0LERE6meqiFk1evAx4Mwnz
	 tZD1AEYCR4tuhAu4Bs9Ya0I38ahtPcFVrF8hvYTrmj1nFlNDIhzJQlkg8dHIxBJXwJ
	 nSHCF8/+aZytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02C8C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476474277.19105.13744550750055490517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4546dc334e8751029195dec89aa247ac8493acf62d7c336af6fd79dfb472d7d0
Date: Fri, 03 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714764742
