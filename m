Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4230B17A305
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748695795; cv=none; b=ka3FutC80TGgp/S+ho7vTU0cOpf49vijlXfsG3AQ9nTQAxQBMbhFYW5YHUx1wGS4lBGQb/vPC4QfpGM1+p0rAips6rrwrVYK6YHbrq+3CJgJdX1b+5KUupm5dKWUt0vTfb0w/hThsky5DdbwofbQoNGjOHSEumSlN2pDizpqvMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748695795; c=relaxed/simple;
	bh=En3b6vzj5JfJY5bgdvpZSxvD0HIiSK6zat86XjMoePs=;
	h=To:Subject:From:Message-Id:Date; b=Xp1VjdL/8jNZT91NtWgWGIESsEt+oomlp741U0aseiAfo79Ky2fH3LFuUZwo6X9VXpHENwVGf410F0vmymv4H/nNXCm5I52m/D2atw5na/R0rESPQfr6AI6Evmny8LW9oyRUeEU2k3YSWttP44a5j/lEmDO4Sz5jrlJiyso8jMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU/RMXSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU/RMXSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D5EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748695793;
	bh=En3b6vzj5JfJY5bgdvpZSxvD0HIiSK6zat86XjMoePs=;
	h=To:Subject:From:Date:From;
	b=hU/RMXSsykXyUl+rvhWiY+c/0gC/oboHJir0LujW7c9smdgW7HBS82vR0DPZ+Vozc
	 RrN72VdPhdh1WXOpcNgxzHdDbAo49urWYHftNYjVGuR5ihG3Zi0jgIgct3nWDC0Mun
	 TMBodlCaWb/y2LJOR2S+/JTVtm7L/gpE2Sh+X+VD/mEz/p8Am+VRkk97TuKHOiJpFP
	 N4VL61gM66Qxg4OsHpl3/mQ5pKrqASC1JcIv2lSjOSNTEY4J6Jj+3U3pnDJlvsJkl5
	 Uqc0OgaPqrVCo+f+Ae46tvwcY9SbixYwYUNdjY7s1Paq8CpZqQZz/4VmcFrArGyCJu
	 b3LcnK/IQa7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F1C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869579357.31106.7443189491859553538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9f57c064173213d0d47569d4611e1493d34fc98510d20f326b4e7a6abd232a
Date: Sat, 31 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748695793
