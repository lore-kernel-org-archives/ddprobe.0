Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F802A1CF
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763940114; cv=none; b=R1wA6aNK4PofE8noCiaDzsCr3tmboSCApZflajnA9AXf5r6hTNTwxop/2DnTkaq3JQLQ/xLiy53CUm9mqyBKjykdxU3ChsTBySt1iFfqKwwQJKMd6ehoIQD20wlmJnG2BY/RMGIGIZ8maQMUEB+GSYRnOIIrxHwbbsZTepEIjFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763940114; c=relaxed/simple;
	bh=2+mfCIZTtRehmwVZRPMUg3Jz8WAAGNH9x7S2RtyrwCI=;
	h=To:Subject:From:Message-Id:Date; b=o6TZYUtNr5pJGnHtmxgY+H29CWPHwjMGsZdZU+5Iyqg1FqMGaBZgkxySEKHQt7IAZT4dcn3AMD+Sh/VUm6wjItZ8pCD2odpdJCMtjzhhJiSMrGJE7Jkh8/7PD3fy7SdbRepoJ4MkQ1PNQhBc9iRQFPaI3Bn3v/D7adWwF7sHy+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqtV+ZDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqtV+ZDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7B2C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763940113;
	bh=2+mfCIZTtRehmwVZRPMUg3Jz8WAAGNH9x7S2RtyrwCI=;
	h=To:Subject:From:Date:From;
	b=GqtV+ZDyEeM2IP/WbbYZNnSNmW+mYmlcmnwVDW1RhCQbsUPry+fu4sw1TI/YV9juM
	 LBGkSbVifoulgX3WZmcgXxPCo/sM1IYE2zRM/gFEsUF2VDHykY57U38wp8GjCFernJ
	 cBzltpG7jyIOwUBCPrAPVutNTylCZqz8STdjdWGhp7ru8Vei/sDpHFiINkvrFPxbaE
	 JhPI5t8mrhLSMxLL19SMWMoF+F2wIhvM2dTdZ4Fp7qmgYVvvk1SMAJy4kmi4JOZ6qp
	 XWORx7DJGF/HrIbYYZCakScTprtTKIz8gKw0rLfsiNW1fMIW6AtWVIZNjljtiDm1B9
	 c1A5FhJQh0aKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A0CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394011359.8858.9335781656987853924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b7787c13775d60b6987783e85370fc685a684dc25bd2a75a77f88d27a9bf79
Date: Sun, 23 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763940113
