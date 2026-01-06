Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAC4339707
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767713634; cv=none; b=esVy96VwU8R0xgpXPXAUFLlLvMuZ9XZHX+dvIPKI1Y2o78iAUUUwELEDyiQRBA1QKlcr6EULy5fjYJ/wChh+jfKgCECzs/MErrPfmA5PA4q7CnTtomSyLFTpufB8kaDwWUA4dC9bFGFpea4rsbY1Cy8Fo5sqEkQFpKp+WaDQeJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767713634; c=relaxed/simple;
	bh=M7Cfi3BuByiIXH9LIzfPfdmLy9KOj72HX6xmv00oiAk=;
	h=To:Subject:From:Message-Id:Date; b=gjKUhmEUPTx1yREyp6VsldhaVQnY2XKDt+ZCXgAZueq1onddAOPQnPjaT0z2XlaFgQeyfnCmm85jHFtEH6i71gWUk31IHCjWMXz95P/35tMYZsJbj6iHAWkbDz0uhsmE/xr7YOzCnrB/YaAfteK5k1pUXh4OXQr9sLgVw+hHnZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk8ae3yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk8ae3yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F47EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767713633;
	bh=M7Cfi3BuByiIXH9LIzfPfdmLy9KOj72HX6xmv00oiAk=;
	h=To:Subject:From:Date:From;
	b=gk8ae3yxP6S1yHVmxs5nal7UlVRbUemDTz4wv7cLqjmc1duPlZH5vCMRwCW/Hdyi3
	 CxSCqTcCFxaT9+xwQqAY4gUDBpXxP6kZDPuxqaGgBwP6TNVpKBjP73G7FPDya5gdDk
	 4jS25MyZIRxqunV0ucHaap3PZdK04aYPPiyPtpNcb+Z5nSs+Kt5gnmnf6f5JvVWPAs
	 eWhvyXf8GHwqCzx626y2CX/cwQYo3ot9gXa95Ns/Vp+npw39GJRasgt7olSo4v6gPu
	 FsTwFySCLUHuWuVM19U6tLz4WTy55GoJYK2Fye75VvzoESR1tTraJZTwJC7JFdyJsY
	 HzZeSwE/UMppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E8CE9D5D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771363359.18824.15481200642038624348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c60084b2fd49dbd73cc869847108babb10fa04738cb170cab39152a1b21cbc6
Date: Tue, 06 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767713633
