Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC103491C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775813254; cv=none; b=uz+Vyr68j3ZMWt8T1Z3zjCU9C5zlROgGQPha7lSrDs1f1iHhFTxIicf1Rp2/j/GtmG7E0v0JH+po/PNrJ+eZy+iv0lE+Z/nYvnXCe9TVqSq3MAdx0k0DHKL3tRymoyxIxMmpevnAT/QKSiTL/jyrvAaxsswLqbepLFk2oxlGeis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775813254; c=relaxed/simple;
	bh=HA4LURpGOTZwPoYjOnqhbE/9DdzuiA51LcNmO0fpNOc=;
	h=To:Subject:From:Message-Id:Date; b=NELp4bRjJfvBr6wj0mOwx5JTpaM/w+Z3ra7KFba7lbB7r9eVwUg3kOqaaRGoAr3ZicvRK6OYU5EH2ojtgT4+fvmQy8mUn62RJnyhe/oAtS/WHebIifkSh53DtTPJs2Jii1QUT06CMbQuCcmFJnuWv6i9H5Yhia6dXOsLXNJaNA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhBKSVdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhBKSVdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E53C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775813253;
	bh=HA4LURpGOTZwPoYjOnqhbE/9DdzuiA51LcNmO0fpNOc=;
	h=To:Subject:From:Date:From;
	b=XhBKSVdIvK8mGuQGx/HCZwI9WX8b1pId34aHJgzcLefEDBfPvlC8GBd++Rz68mC9/
	 JaY9rSXUOGncAqKI14HNo9mfcWa6N88o//x6a3xh5mP7ytKX6leuj7E+X2tkDcgCz2
	 lUWrWAu6LKbfuiP4AjQk5DrVzaUO3vmnxou0b8CGFS4OSmsjkAzUx02qQHdK3yBnpR
	 9aYAmDSm94jPaAWMQsIWVD2+DS6+TWRINf1lDi5qsLtEa6m1bf4Nq8Pzx3sNDQwVoU
	 4/sVUk0V++0c4811knv23SCqBPPgObVmMwqNhCqNf9JlmYrI3C+05dkXrYM6jZPBqS
	 G6uys1fD3g7iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFFE9905C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581325368.28279.6513336647788909996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ce4589ef828a773fe9360217a3749466c5f81b8e6f662672c27e091db63560
Date: Fri, 10 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775813253
