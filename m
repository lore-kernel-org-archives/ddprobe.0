Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA939125C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708671497; cv=none; b=LIpRi6joo2NXC69xALOZZ1Ts69cYUhRI26/GwEi0rhVHKkd3FIaSaAOsYypZVoT0KCbEVq5XGSXMV3oVNy1p9CoQVadisfkNvelCA9rAbPphcb8RP/S75WfURsjChGUcNkSyrDLHPE2byEhQ/R3yTA2GTa6veGfFYRjzHgGoSIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708671497; c=relaxed/simple;
	bh=BWhTYPX1zvdPhsUNC2qbw6ht6+YlGnxM/ypwYrxTgqE=;
	h=To:Subject:From:Message-Id:Date; b=AdVZBHGbcVDpjjCAz3TUk7MhHv7AR7vnSuL8HLBB0c03A2+HQxU3sEqKEJGGGzyVFYT5AJje58gSNAhkVjYmOOK6vUQNxxBDxVOVN3q+fOQwwtgd1apB0pJXHqKhTSKOWvdnQl+rdGhh3qXClubG/3ORzZxDRaQOwHWHpW6KwDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDx6EOZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDx6EOZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAC1C433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708671496;
	bh=BWhTYPX1zvdPhsUNC2qbw6ht6+YlGnxM/ypwYrxTgqE=;
	h=To:Subject:From:Date:From;
	b=bDx6EOZLXDJwe0RRxblAJeOXOKtI/SupjnpITSZiCGFHNVJunvcUZ5wVLe0e+rLh3
	 K1MW6+hG+iuQ9/20lEI3xKfakQ3iOJ3gflCvfSeoCREUjcCWDO1v3/hcaA4MwAIb0i
	 2KdWNWS4HSO4b7kINPbRzhaZhvdBQkNNLpXY/6coWMcHRst8EJ1WCKEkxznYwmCnfs
	 Yw8mddIV8LCP9QLKaLQotpl1RY+a9n1vlhtki377LF3wMLJBEZI1K934ZcqkXY1IeM
	 n7nTOHAtvR+bQ0hT0aangAFX8tE3zof/V5l7uR28uh7f1TVzVbQfNjMEPufD6spvmQ
	 vHYBgKEJBNFoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A1AC48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170867149637.25677.12355168406476219382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762557d28fed57c615a16f3edd1dde449d345ffe4a5d503a41e7c4fdc58f6a1b
Date: Fri, 23 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708671496
