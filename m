Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB7361DB5
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775627734; cv=none; b=qDKfTpYI66Kcxm207Bnhlw0C4y3J2haGmIvfi94l8uYGviz+7qrf2W9u1v0449S9ujddzI+ygxdhieA+5lhZMLQ57JGeUj53CjsElnOxwjjcZb5zrHPHRQB9B+/C4LPe1e2Pj2sQszXQcP1EdParY34Yo7cyIEaiHg2bNibIm4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775627734; c=relaxed/simple;
	bh=msAp9yBH4NBHGEPKHTv5v5xibqHLXgrDrMtrjuCFuK0=;
	h=To:Subject:From:Message-Id:Date; b=Nt2DIvL+b7wVFQ3x23oGL3Ru4WJZD3BYbeLE54IegqTx6XVMNJoseoz82IfBuenLDx0lQvaRkPNGumYzDZkUiGakNP8bQ5YFtHHgmFl9HztUHW3BEZks7gFFSdvupYD0s7h3H+Rz0SafK8XN/cvJ78VbLxEHRj3uz5WvWMCfjyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqD7f/OR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqD7f/OR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE96C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775627733;
	bh=msAp9yBH4NBHGEPKHTv5v5xibqHLXgrDrMtrjuCFuK0=;
	h=To:Subject:From:Date:From;
	b=GqD7f/ORlqBVCs6A8gRhH78mX9s7wyl18xdRtQ9efhv9zi363pEFZGjNjqcackwQS
	 eEKj3nZqkClRwHe1mXi5Be73TrujgfUBhVgLI6TKlAQG/yC5gWfMozE3IQE1GPLTqE
	 XwMWvz05FHIxH1wA1LxJj8Q8oYfRtIuuBa4PR2jFXSOxOUO3pnzfN90idT3qpylGlG
	 uLAPXp2Twla8x2zNjJDNjOBmvTHl+CfABdhnY9QBgQDHrJ1c3+LHwRdc381XDu1D07
	 aXOa5IcVGN7lhkNBEaiWDvw+kIyGWt1GKQiH63XEeJCd2CWyKQ3kk/sa5a7XAXi9VH
	 olXkDLznDtkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8960FD5F77
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562773371.28415.9720061130539691229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628238aa39c898751672d160874ba5e0bf7d1dd4116113c7cf78b8737bc57ef9
Date: Wed, 08 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775627733
