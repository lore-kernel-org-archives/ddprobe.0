Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E9A748F
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739615934; cv=none; b=ECQtmv1iWVw81kdTJLrMVY4sZhpBZX8hrF2SEIJkm0aV3oQdpaQPNLLPGo2lhXMVaT1hCU3idJsuDk4hcQebJV8A3PNggDaIqDY/MjsyDIZs5hNjJm+dEI1uL7ezjrN8DuzrjrMdR7WXwKlrzLMZgvzRvqOY+zVtUY7QWxzQPkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739615934; c=relaxed/simple;
	bh=3dwhfIy3ul1cEU+QHnG4SOQyBS3BGsghVXaZ3i0vOFw=;
	h=To:Subject:From:Message-Id:Date; b=TdcvFkm/cyI04IgWVZqarM20DWafop6CcOdhpTqx2HpGOKUe2JZa6cMMBo6SSiVs23Brzrql9yoi/Xhk5Ya3TNZ2cPDkLtcDOHCDnbJyGweBfMz9kzqS2bnXeeVj3FHdZNRbbZVJmE42ofhtSBZ6HjS9k7FgWuQ4Uah4QgjH7yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keaSxrLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keaSxrLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE71FC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739615933;
	bh=3dwhfIy3ul1cEU+QHnG4SOQyBS3BGsghVXaZ3i0vOFw=;
	h=To:Subject:From:Date:From;
	b=keaSxrLHjykP5vD9jPZmByqLDwYtrEKHNVtuYTwbYJqp6Y/10vCCrD2WjPmPF5LG6
	 AoKP5Rx7RLEqnT07g+CkQtNPMbM0BajVkMZCYJO44qGuFaTOHaLHoYONaV1Y3o8vhq
	 w8drSoIycxkBpjavjxkGXFCWCdLeWXHau7IAOr2KxtyEhaAubBPFGt9WZDiSjcuyQm
	 C+1dgifFuav/a6Ac7vlIezxOHaLaA2/maJCSqgPQ5G5D/NH2Y2c9FQsTuEkMrEKdVD
	 a7hJ/7SErdMuPTlqXG6RSoHXTAoxBrhxKvQsqieMoO0ETkhxSOpmTdfB1RcczH/hHy
	 WXBvPqbkl8aIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A4C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173961593360.5533.18308763780118134493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d42eaadede279285693b719a3e387f29c113fa49760e568b100467d53527ad1
Date: Sat, 15 Feb 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739615933
