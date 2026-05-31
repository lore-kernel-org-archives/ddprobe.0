Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136121A5BAE
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780241074; cv=none; b=mJNVQi8Hh66gIg5By5iA79/rXgEjTqQpeolbz2gfyF1BTsTPGKhgnU7DEJ/D7tnAFWRX8hs2Z/wn2JQJU8i6Yey0EY0fx3KYSW/VIVyi6oJ0TGFR1t/icgkMCIM1Wwdr0rpH0c1DBw3sCszBXa9VRvet2jjbtMfYgkBw5CHkFGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780241074; c=relaxed/simple;
	bh=KIXOfA3QvZTKplcc7HFTH6uNyQ3VLdQx/kEjBvLCxQc=;
	h=To:Subject:From:Message-Id:Date; b=jjONfHmCiRyvh6qAdCyDo2EQVwX4Lk+ad1FaZFzOpO09e1b7oxb5l3LZRTViU3dBmh4i0MjXAUKTR0JjlMzLmZJzUI8rBTHGScUz0FTuGP0V5YWwZORnQN45zpGw4L7pGwgyUy7ldZpDD8StdyrVFrGsX/pEMqvyGKjZHJoX5Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIhxyEmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIhxyEmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE897C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780241073;
	bh=KIXOfA3QvZTKplcc7HFTH6uNyQ3VLdQx/kEjBvLCxQc=;
	h=To:Subject:From:Date:From;
	b=fIhxyEmpspn9QI1mEK/jf2ppRaCWM0wLiUhBvx7afhTOw9E1CSUlNboktAsC1JvBG
	 QDekwq8J1b6y+n+Atl/c+Q1k/nYDhZ4IhbWdqWD6XzCo/U01grjrvHWaAidSj1JEYY
	 Gegq1nSOkYBt/Gclyp8F8LG3UGPRqZ5AdSs7Ox/jM0s6bA2s4y0SX1YHbR33EcKIbo
	 sW5nc+074lOllQMxVAR5ENOzal/1BvV1wmFSH2Jkr8XSz7U/PVNS8iquCT1B8t+KDP
	 s76MY+LSDjp5YaJ+zzCSfXtQFNgP673u63V5LKFYd0l+2xXxfPW2ehYGzv/RckLuuc
	 FDrGLLfqYOjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CBFCD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024107368.1324.8204126248161238657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffb35c438cc537906efb0383ba201db0a93ab3f4cef3a11765938911eb05d38
Date: Sun, 31 May 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780241073
