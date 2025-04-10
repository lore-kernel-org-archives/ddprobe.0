Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423561FBE8B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744310394; cv=none; b=WjEu3D5I/QDSNmAF1xuhgS2ATOz+3nCheNkkY6gdhu28IZkdyRcSYS8hyiUpOvuGl9OQJY4nUQkAclaa3FiePgDXls/XtK/3wZytOGljTO2BTxnhq2xDHzt0ywyeZjvIAnj2A8A7/cxcCmqLmz4om8++A8VeVTtbB837xp3oAzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744310394; c=relaxed/simple;
	bh=JQLfBpzWv4u8QK47iX2nFVSTYL83zuC0m3nAsSUi4ho=;
	h=To:Subject:From:Message-Id:Date; b=gQzs/yyns6L4qQ4sqZbrwF+Nxy/jSsFNHfFiQkH9Pr3PmcfaA8zzOOLUyLoOs8aEqtaKtmwUpHcu3VHFoo5LXCo1X8D6b0kdxNwPjtEbv0H7ho+OeJr2T9CQ/47NP2uTc8hySsrscLXh23/9vsVOe34eZffdKkAORTVHOu6Ri9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bST2GoXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bST2GoXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50A5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744310393;
	bh=JQLfBpzWv4u8QK47iX2nFVSTYL83zuC0m3nAsSUi4ho=;
	h=To:Subject:From:Date:From;
	b=bST2GoXBPJbJtzQJknJXaAeI8rqXYLGIAn6wnQx0aYP3JgEhP4KGT6Q5c/BXZKz0i
	 QrxEXN/cqW2NFs181u2+fTFXV9f+nm+ajFcrmu50dH/K/69B0Z78UWM4NuV1XqDrdC
	 48fw3RdAnnx4H5G1Nol524L9gq72mN/9TN6mK9J5pyqpjOX/CRFsOdNiehLmVZuHS7
	 DTseykv2jkiTIcSQas2stG6GUzeCFdTX6ygKPkuvLKw/CKiyAsLgC1aRMwYu/uFUL6
	 wfpHZL2yvjObSGA0y64vRZkf+lIJHiZV0MwCinFX3af2Cqhyipyx+A2H6VtWhTtO1A
	 JPoMmqng0FlSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968EFC369A9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431039360.6867.14826564584939294876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1adf4df805c32120276d42ef6df4ef61107db75ab4430bca56d49bde1b605275
Date: Thu, 10 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744310393
