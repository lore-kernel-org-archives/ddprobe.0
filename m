Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA9C1A9F9B
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760390394; cv=none; b=L7aDH7AHLPJnnIea8J4zt9aD/gjGc7gZI7WUBoSVbSPGQnYbVLHWKuqFhQ4XCul4CgujmkSskqSepsdFQdfrTt4rEtvf5doO5cO/b5gY1CIIhbwBWJz0Wmq7VM/yQ7uRtVos6SkLCz334vGIFVVcHtQ1B50XSMt52AgL8DSe8g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760390394; c=relaxed/simple;
	bh=/vpA+577zUVtGKC2htZkhrMazbMAMKctLh6VIy9QEOk=;
	h=To:Subject:From:Message-Id:Date; b=SYe9B1jEfSM/v9WFXeEgUOEfaSsBa7qiHijcfpO71F1VwFpSYMI2UthsehCKj+lJLMVw1G5d5RGS5MfwYmK2NutkhGPk3ft1sTh+xE16RO4yikgHB0/+F3dFed6+fWj2XK0SmGor3+1O9yADIq21csEj57PdXMpRphha0Fwbf2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1ZeOM+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1ZeOM+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760390393;
	bh=/vpA+577zUVtGKC2htZkhrMazbMAMKctLh6VIy9QEOk=;
	h=To:Subject:From:Date:From;
	b=F1ZeOM+yRBOPWm8GIIWfm1XIRgXk3yEBbFa0m1XBqbTKblGcHATLQt4JGdN2GrYGJ
	 2geX5JIxa7HMCoggPOoODNsJoaQmAL/wcWSMcjetzUSTnO7Zq2IEXdHFLpj9naulzh
	 ng2M3MkSJXMp6bGA0ASM0yi5PlhRntUaQ04l74HscFkEtMPVihCZsiBFTrUuuiZ8ba
	 ehu7JJjCMNVb/2gHQ/Ym+bnUzYQezrpbUQBe9AnffMgVbdP/egcb+VDGe1R60I6Qqy
	 7F29c/Kqr5aEzUjIB5x2PRW/d0+9TzBXes0WuS1VzcjL7redgdnahnKEwd0Zl7ufZC
	 qSCYBTc6+s1Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90453CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039039358.30327.5312916753622330853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9467861f2efde52c5a42cb742ca8baac4adafe35755d5b9d661bedfce7d8a1
Date: Mon, 13 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760390393
