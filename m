Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586642C18C
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728194754; cv=none; b=M1jaYHpppTobGb4f1ymRBOPuJtQiw121BDYHLI7jGKgPIZ4fANLH1MCpLQVdXpMSF/0NgD1AgJKtmH+5L5kOvVotZXrOFhAfz42+RJ0QoWXYi5d7rSaL+L2/VUvUBusa9HnRMi01rKbMrnQynnQdD7IW4e+g0qa9JhpDWbTxIK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728194754; c=relaxed/simple;
	bh=m9FKlJr/pGxqQYjY9qQSGJqkgVKx2/HlC4k+V7/YhlQ=;
	h=To:Subject:From:Message-Id:Date; b=dG+P4NTnqzjN2oxobjU5lCOi61BRzysU0zuJqJoDTXGdQHwE29caA0LikEDWy4EnWnuIRh19VLvIlqHiP0BKA+8o52TxJ9Vll1j0LNDvGAm5H0JXK1+SHHHUMBgSSkbzrZw6XCyzmSoA8AhGAU+IdYPmYp3Ku+QinmAjuhTIfFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvkIR5hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvkIR5hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C308AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728194753;
	bh=m9FKlJr/pGxqQYjY9qQSGJqkgVKx2/HlC4k+V7/YhlQ=;
	h=To:Subject:From:Date:From;
	b=nvkIR5hpPnst75lN0BXzhfn8izgp+PTn849PMJPX0BRkElUixSE+D0/WXyuuJefU+
	 B9+0nnGCyQnE4+Cadn0oRGQGl+JubK4SqY84ZWnT21uBWhyLDYdTeADbBikT6CRqW9
	 u1JE0jrslTeOxdbrLWczxhKBKD4XyeNKn6lhWe5zl+HaJTGpfGPQsc2Tw9vdyh9BkG
	 xhDDc58JdDiKAXx65to9lQJN1PYkNH55TYnKB4+kpO5dJbhzhCKNmN0TvJ902WJx/8
	 zYjG9dwzgeHVC1dBowM80HBPlnYPKnRRvjcI3xqgjOmG6iJw1ANeGhcZexEjd5sjGW
	 QWWXbRxkk0RTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE511CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819475364.20203.13940628552081119423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ea69030f70d34af280228eeffd92aefab1401d94804d1f411433d006239e71
Date: Sun, 06 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728194753
