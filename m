Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D61A6815
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779516754; cv=none; b=ZwAoxCEOO+rOQiWV6ODhdxLZy7Mw0Tvtm7cEVUqc2Sdeh6ieM50NAD9AqqOMx1xmevgMw9xdKi7LPZPG7jzu6+JVFcjo9/hBe91jkRX9c4M0s0UUBqooQIU/YyajbmeDoinZejkUNnhJCIuCweSv64aK9gnmg+GHNixTD21XgxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779516754; c=relaxed/simple;
	bh=oL09WO1fAsisCdyFB3I3dFPmYS/7PyOcEb2C03h/Yig=;
	h=To:Subject:From:Message-Id:Date; b=WzWOtV/79eFI2E1mJF6HZ5ozOjgqnjCEyiagoTFg2VffdRsxjUGGbmz7aayFHiIcnp1+EzZCR6j5hZUxPaI+Xiq0aIq5hInqaZYEi/9q3UYFoJrqMV4SjRUlX11YWbkEs5J8igqSvs7nWuQ+zjw7m1raSPaPAaYc2nOtI1IsPoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvl81c/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvl81c/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C339BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779516753;
	bh=oL09WO1fAsisCdyFB3I3dFPmYS/7PyOcEb2C03h/Yig=;
	h=To:Subject:From:Date:From;
	b=Uvl81c/HhnaegbgWvHOtNUf/ZDVlbTi4Pd+85b2lHkQ73+NtTxHkeqi4nl65wHeG2
	 /WUCesJS/4H2K/9rcGh6cZjBoTprOQ4GlFVOvq42jX0sZvP0M3ZN1wj/X499CDArNX
	 gBaGdcQRHHGOPpiaglgi++Ngm6FszrIFVVEW3r23re40GtYK7503uo5clMuvsFowjy
	 jD2GIVXx6cYMXbmDnQDRzXp6j8jZsF03MXYWu+Gz/v/N4HwC6le0N8IqZ6LeQ8axSJ
	 mffaS9pPTTR4KxPwVVOue308vRt1idqgGP7GZ2k7HHCikOCn2gwNOFhVgOer0JTB26
	 kSMM1cPmNLJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18ECD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951675368.4001.11760468514371435005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c89cd78f66b13324a378281debe21046b25dd391ad3479bae65b375c05dd2d
Date: Sat, 23 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779516753
