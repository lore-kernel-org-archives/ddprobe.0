Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150893A9D8C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781580394; cv=none; b=Cyg9Y++HglOcgxcoHt6wQgy48OOVyA3P+FmMQ0tLSIw/1UvoM73dRHAOyfz5y9U+/9XdWueaL3DKOE/gbS+1NT75y1RRYInpWlAz0LQsKGQPZ82o+1+YsAq+l2tJpYr4Q92Sd/eDFyBU0uWCfDqeMrGZpuOgJwKc11NBUNXTNO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781580394; c=relaxed/simple;
	bh=aQlfR9gJE7+fTsifZItIYcMPjaigPHzFCpx6lVEbBEc=;
	h=To:Subject:From:Message-Id:Date; b=SfPgn0ng6YC8XzditvUI66fhXPmkj04aN+bQDZ4WPWH5RZlL1jNGizwbX5pZ20wuADyRjdoBPYifAdsNoD7Bksj19f8a2XUNC0sFSF5v22SnyPeH+C+1iZD9mfAWMUfCU1w6cdLB+iCiuS1tPiIDZMAAZHJ3XmV3Ro6Iog0xkAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYw7jbM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYw7jbM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47D1C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781580393;
	bh=aQlfR9gJE7+fTsifZItIYcMPjaigPHzFCpx6lVEbBEc=;
	h=To:Subject:From:Date:From;
	b=PYw7jbM1OcLym+Et49hI1WtEBfX7Ks/rqFgJMD3bEYAYuuKaMco4lCPnFZCNoEmAZ
	 1hyqrD6dCaC2rhBCg8baoDM3KkzlbnInPfWQmtOa26sf+rpsmhbb8InBdF12ODC791
	 1+c/mHDdHykPdUeAkJBY7BLH/0sTEE8C7AoJfQgrDqbb3bptlyzJg42LM1KxoSaU/Q
	 JXeV6vPXb+eSPYP+XC9Ob00/UVnleTDeQZrTvJgsdcMPiv5IrlrvR10YwOb7gUmiXT
	 zML53b2nLAhjhM3a4BsiTHb85fTimVF0hd8Am5h6kH5TANfMEWDtohcIo4/9OO6PWl
	 kGPBXkcBjuI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB082CD8CA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158039369.32301.15594932422541408637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa3ec83970ca90009cf2c9e4045bb2152f8164ccf027284168d1e93fe423324
Date: Tue, 16 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781580393
