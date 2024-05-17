Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D87F65F
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715976743; cv=none; b=psWnc8zC17YnQpznp6EgmF01lMIyYY0MtA2GCGZsmSBPt5z6u3/bJW9J2Z6t7NDRzLlz83TRDU+qOpyLNuglCY5l12xft/kQlmu16tjKO+Fmh6tXIFD4FeXyWgQMcPwJjynPl4eK0fvAGC2vVBq2Qfx612Qaqf3F0k5mwVv/O/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715976743; c=relaxed/simple;
	bh=1l8Hhjq3dPx54X+76KZy2UnudwqR/VbhfajrI8v23s0=;
	h=To:Subject:From:Message-Id:Date; b=SofRDkUU8MHDE2lz4TY/8t960O2aojJU+VIV6Aqq1sKHUwBzHGkgMnbdjzzGx08G22HF7jlXg+8jpHnx2fciHNQSbZXLIgK2iQmFob1QzU4z6959gilCvA9NNASCI6NyDk7ysnDPDtDi8bdFS1+dHyFwsqAvwiywWw8Q9V+7RxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVc+yUVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVc+yUVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AF6C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715976742;
	bh=1l8Hhjq3dPx54X+76KZy2UnudwqR/VbhfajrI8v23s0=;
	h=To:Subject:From:Date:From;
	b=LVc+yUVw605yzgOJChI9v5tv4GLHwqeg9ym7vDH9GAAXOA1iJOKdIgrhqHimt8Lts
	 z+i9muxvt1j09ujRWkY9a3Mv5uDp1L94ZfiYzrEclQ1J90s+q/w1RAPrMa3W/e2aB3
	 r8gLxrBTEDgbv5FDtFIlV5vusta/lbRsHmUo20rvV1TwgcdvUKWeGTqinA/Q53SuLd
	 Tl/b3psbgBwDSz7TGL5Av3rkXnAdHmyJ+D+FTa+dh3iHN6y27gbBdyln83tAcm4kir
	 eh5lrwsUT//KWHfTA3DzSEGygUzTRav/kGUcIFZeToquuQii8o0+45rUZE1/JgSDOG
	 6X+cUps+DWUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21A4C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597674277.17806.16336483086023559885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0902132c5bb976410044264b314099bea4f9a6c4afb0dfe8e7c2dd2e1516ad6
Date: Fri, 17 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715976742
