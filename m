Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBB084A31
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728837354; cv=none; b=Bh7snkrVjA5+K6dJDQXm+m6duCQnoMaiyvLnP/39GUlZPlmfTQAvsZL0zrauO+WcXX+hwbik5vHIjUOVmNdwg4OUdIRBVCjKS4U6LUr7JoSmdhxmzWcrPmdDZhSdR3JaS+DoHXFIFFxDJJ96SbdFFj3ywm3jBTdOQC5w0YZVyKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728837354; c=relaxed/simple;
	bh=9IspXSg+2WUNHbg8sWbDtMedxTgjIM216a6ySje1wUk=;
	h=To:Subject:From:Message-Id:Date; b=Qpa+cxT7Pjfe2UuzB+1FuTxwBIW2XNskO8q1lUeDKlpKBXaQiuv90v6dph/GhzFtIzF7W4Rc7nArCymiL3WIA1crJcThFZ01h5WAgWEFI16acAxrbWWBwIzRHaZYfJinn/upBwmsemgVAqPvbEdpvG4/UKD3GX+TQGC4WUcW/Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2X2iADU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2X2iADU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E99C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728837353;
	bh=9IspXSg+2WUNHbg8sWbDtMedxTgjIM216a6ySje1wUk=;
	h=To:Subject:From:Date:From;
	b=u2X2iADUVcRfyat9Q+KDmBUY01v272DSPV0oN3C44gn7z9z3YjLSMP8OWXk5ua+SZ
	 t0jUGGaJB4GRIgfps5u9pY0BGF8I6kBHaybhsaj0T1DeQavMV5j2m3Oy7MLDZT6K9+
	 9J8lUj1LJ8AshprZ4Tl4iSjj6R17kBQYQxofsf9u6TxpdyBpNtBD2VBV2W4ZnMeg62
	 BqjLajPLsmE/Yd0VDuFt3Q0rRLstQWSzQ8yU2hGXjRn8DOvKmT4d95k1FF0X6VtS73
	 8cpkypDSytk56RUpchFu2PB/J4avBFTeVez0yU3lheEqBGwcFZz9zBUTb9e9olrLHd
	 IPgG1+HV9DhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C377CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883735363.19547.6291086396368434968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e250b57affe8f9438176ddea7996e07dcd67a9ccd55893a5eba6a4915e86fc
Date: Sun, 13 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728837353
