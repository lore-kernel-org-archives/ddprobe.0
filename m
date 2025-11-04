Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC22116E9
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762219794; cv=none; b=D7NMo/Wkd2D0GphAEE6NSO7ZZHe7SXP5m3usdfdVUfxtIRI/HgNUX2GA9/15lWo5xtKIJCdHD+cHKNtJjQpNOd/GhMaqBoOgW+HkV/8O7NyJZy/BYWQs3V12/q6Vh3hfyj9oyuhoSZgZp/Damxg4z/OgjRFHRoGC0cvHMjzbvP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762219794; c=relaxed/simple;
	bh=mg6cmMYi/WOo75N8XODp0MGBcDMBr2FrfhaXv+H7N4k=;
	h=To:Subject:From:Message-Id:Date; b=L7H0+46oJMPJvObWQQa4Y4rfpodla/a0dLosZqeLFAlCK302r38DBCEY+OPHpvtHN86Z9bFeXNq7kDindjapVPUDGoF4Zac+QkpYdhcQYcnHYyLfzneTvSJ8JxR8hhtM5rJLpVB1b1RVFLREFHGRB8R8YLsQNYGglCM2N1bUA2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leoeV+rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leoeV+rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD4C4CEFD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762219793;
	bh=mg6cmMYi/WOo75N8XODp0MGBcDMBr2FrfhaXv+H7N4k=;
	h=To:Subject:From:Date:From;
	b=leoeV+rvzfnQFxqczUyffGG9LDQ8ANQN6UeNgCkkQ9CUlM349YfkxVu9XE5II4WNz
	 XtWIQZu04r/Z8n3DnoPYDRaQzVZqBzhbVGUmhQ60Yh95hNNWPiLKhlfIHiWcBU5GiL
	 to5tglTWF9AS+27k4m3lslP61E+Wep/uCrMwlm+JGZ8XnLyIClvcYsnJ3RnC1oanRK
	 Ah47h0BppZqhJNs93jJrUENN32cSx5XX2JIv551kXYqQzFyvEqHMxfpMVwY3r0QCp3
	 ms8yXXxEhQgSBLjS8QxMqHYozn9oVKBPeEmi19JLDrK3iPvf0ojZnYE3JifJxE9ZYt
	 g1fZbp0k96Fbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93246CCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221979359.4519.4006089304983976639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a33ee2897d2bb8e54251893637f775d77479dd01fed047974da13ff3d0926ee
Date: Tue, 04 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762219793
