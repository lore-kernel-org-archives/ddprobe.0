Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4074C220687
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763264454; cv=none; b=V+mzFgn6Ng1WWMXbDbxdru5bdcFuTLC8aTWKkh9hAcOq7xcEtffHc6MNx+XzbfkJTdRrYVe4HzXPa4DPaekImMprC42jv439XKmpkKMlf04QIhPQvmVkDERybj16MQVbKXbS82FKIzGJePrMro0njqvAb1LLLo5v/IBVKl+FxZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763264454; c=relaxed/simple;
	bh=G+X49qZ8VW7eBVkrSy7bEwB0f8kd8nwcSZyDhjo8z8U=;
	h=To:Subject:From:Message-Id:Date; b=kXjB8JsiHrPkE7VPO5L9I0ttzqpmPTZ50HD7LBEom4CQIYpxB2prU25slsCTBloOineGNqYcmltlwUzJzrg4F6xBtCWQolo6AtjNNGLIYK67x8mHC9QRJQ+cXC7DSP7sgQ5MZNJSPElo4LJm7sPa0Nlf4yqpOsqOg3lyVwwDg00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ0Ou2F7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ0Ou2F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE396C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763264453;
	bh=G+X49qZ8VW7eBVkrSy7bEwB0f8kd8nwcSZyDhjo8z8U=;
	h=To:Subject:From:Date:From;
	b=nJ0Ou2F7DlzIY+XirNZ3317tQrdIZ2NDcAbu0zl5EIHAR2X/BQLmyCG1Od1qDUsmm
	 RXXkqxud2Ifa30c91YmUoMgWGed+yeZ64GFJJmKBEt2ebfQ0yfb/1rBqYwa+Xn/rMq
	 +1X+k9edhTlUehjAv2Sk2Pzb2CCKlPpE8wCRknsHn5w+Yyk0Uiq32KURB0VLGhx/T9
	 k3IlRBzZB/FHJwg0YUo8gJxxvJR6wN7Y0kmzA4moDQQhsE40+CnQXww+ptO7pi4vTM
	 T4UAmgxrcW89y060pLP+tx1Y+hi/floHRUSCBMs0Iw3cfxPZdHFpjPmsgaKm8be+pl
	 ExDDzAyNSYTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F53BCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326445360.32218.17154240102571438468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05588af443cc8954296dbdc1c336502113eb0596477be4632b1d707e3e1e975f
Date: Sun, 16 Nov 2025 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763264453
