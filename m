Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C05101C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1eK16tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85560C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704570496;
	bh=fz5ZVhcmkZrPAJ8AfQTA+BFBqS81L/qktfgWUfEFais=;
	h=To:Subject:From:Date:From;
	b=u1eK16tzimp/ZjR+YFECgsftfp9LEVOn6hgL94+LoZ9OxKW6WRE44eJBjskBj/1+y
	 xixk9JZTZc5IJjl4Ll7COqJ3hb4hlR4w16MpW3+kNHcWgxgupeDh9zzACwfoGl+0vz
	 3Cx4iAQM5MpyrmsCVl9koUMrOCGb6i2hpLkZAZAZ2FZ+hMpI2BkclsevbcuKzB2sFY
	 Yo+K9YiGr0WYYk8G690JZ45LnZ7mIzVQllOlagbfJ2snf/aSN1sJFp1bUiAC0B1e7k
	 rureD0DxJT23p5TBTObiPsCbJATvxOVnQMacJS1vo6ZewjdfnemUnuf8cXb4rtvfmF
	 JpnncoR3nvD2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A9D3C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457049642.31318.15304639301454255045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22d97895eff3a2d4d3d854ccad3f19a412cbfc5e2704dc64c8ca80f056eb55e
Date: Sat, 06 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704570496
