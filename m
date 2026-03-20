Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C42363C49
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774001694; cv=none; b=pMZhLkmSSytAROHDOm2rgAzWyPnT1gm7mhFglFofb01hH30Te2PS1F4A4ZEATUv2xyKUozzGmpRnkBjXhpJmQl26nfpUQnKlnEFUXSwxTjVg7Sh+rnLMM8lDyLUBQTGmvgCxp6kwhKs2N8AoiPVpma1aUGhzUGjAfxNPQLfqk4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774001694; c=relaxed/simple;
	bh=6KvM3LVNOxyy/gB97CGedm2WK8EjjrVL1xogXyy2AD8=;
	h=To:Subject:From:Message-Id:Date; b=PU0xcijPu0KucvbUdkjoD2qDtpfuCTUJSnqbcmB1yTAOBXT++dfKpAiAWB4UbZ1TLx5AwTHJ4BG+M8kjEawrqihZrbdUbQc+2aDIgo07Ifkf/cD0wZyagEutB++rMF4pnAK9NBck/b2qywVckg/idnCmTKLguYpVhPYt+aheWDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFXt9zB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFXt9zB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D28EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774001693;
	bh=6KvM3LVNOxyy/gB97CGedm2WK8EjjrVL1xogXyy2AD8=;
	h=To:Subject:From:Date:From;
	b=aFXt9zB2hoQ5H3IqLebuk8Nfb+dRT+PGL9p0xuMxQe9T6fXDehu2a5urkHy1qz+wr
	 QPIqQPckKqTn04SMhX+e+fjkPIGA0hmlCCWuRAbqPUAHY31Sj0FAKn/oYuzWYnwmPv
	 2oG9+LCESY5eYnXShBg3e1fo2z1gtspaKUjYRurnVBVlpUWP7jPNhlNZQjNKGE7hM9
	 KlVBGN/PwJF4YmyivezL1aPfyKGpYIT9Evxcf88z1gf3774Yi23yQVG/R3TPevEtRk
	 bFFcGUZPBAqxJrsdr+YxHaIXeCgwti+mHBMS8Qh6UUQLWIZK6d1SEk7tQxlj2fKur5
	 4eCQu18sMMApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BA108B8E9
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400169357.4697.18229321273502371789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be48c04b763f82209e53171bd6423865cb0ed0f343813723ddf7da93046dd4d
Date: Fri, 20 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774001693
